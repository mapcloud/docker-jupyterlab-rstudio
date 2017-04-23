FROM dclong/jupyterlab-rp

RUN apt-get update \
    && apt-get install -y --no-install-recommends wget \
    && rstudio_version=$(wget --no-check-certificate -qO- https://s3.amazonaws.com/rstudio-server/current.ver) \
    && wget https://download2.rstudio.org/rstudio-server-${rstudio_version}-amd64.deb -O /rstudio-server.deb \
    && apt-get install -y --no-install-recommends /rstudio-server.deb \
    && rm /rstudio-server.deb

# configure a non-root user for RStudio
RUN useradd rstudio \
    && echo "rstudio:rstudio" | chpasswd \
    && mkdir /home/rstudio \
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
