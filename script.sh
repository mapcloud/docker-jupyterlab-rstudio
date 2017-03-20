#!/bin/bash

Rscript -e 'IRkernel::installspec()'
/usr/lib/rstudio-server/bin/rserver --server-daemonize 0 &
jupyter notebook --ip=* --port=8888 --no-browser --notebook-dir=/jupyter &
jupyter lab --ip=* --port=8889 --no-browser --notebook-dir=/jupyter 
