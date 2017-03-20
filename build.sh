#!/bin/bash

if [[ ! -f rstudio-server.deb ]]; then
    rstudio_version=$(wget --no-check-certificate -qO- https://s3.amazonaws.com/rstudio-server/current.ver)
    wget https://download2.rstudio.org/rstudio-server-${rstudio_version}-amd64.deb -O /rstudio-server.deb
fi

docker build -t dclong/jupyterlab-rstudio .
