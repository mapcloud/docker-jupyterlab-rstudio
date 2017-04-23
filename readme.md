# JupyterLab and RStudio Server for R Users

JupyterLab with IRKernel (with many popular R packages) and RStudio Server.

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn]()

## Usage 

```
docker run -d -p 8787:8787 -p 8888:8888 \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_PASSWORD=`id -un` \
    -v $HOME:/jupyter \
    dclong/jupyterlab-rstudio
```

```
docker run -d -p 8787:8787 -p 8888:8888 \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -v $HOME:/jupyter \
    dclong/jupyterlab-rstudio
```
