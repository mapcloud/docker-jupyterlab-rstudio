FROM dclong/jupyterlab-rp:centos

RUN yum update -y \
    && yum install -y wget \
    && rstudio_version=$(wget --no-check-certificate -qO- https://s3.amazonaws.com/rstudio-server/current.ver) \
    && wget https://download2.rstudio.org/rstudio-server-rhel-${rstudio_version}-x86_64.rpm -O /rstudio-server.rpm \
    && yum install -y --nogpgcheck /rstudio-server.rpm \
    && rm /rstudio-server.rpm

# configure a non-root user for RStudio
RUN useradd rstudio \
    && echo "rstudio:rstudio" | chpasswd \
    && mkdir -p /home/rstudio \
    && chown rstudio:rstudio /home/rstudio \
    && gpasswd -a rstudio staff \ 
    && apt-get autoremove \
    && apt-get autoclean 

EXPOSE 8787

ADD Rprofile.site /usr/local/lib/R/etc/
# ADD userconf.sh /etc/cont-init.d/conf
# ADD rstudio /etc/services.d/
ADD script.sh /
ADD script_rstudio.sh /
