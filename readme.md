# JupyterLab and RStudio Server for R Users

Jupyter Notebook/Lab with IRKernel and RStudio Server for R users.

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn]()

## Usage 
```
docker run -d -p 8787:8787 -p 8888:8888 -p 8889:8889 -e DOCKER_USER_ID=`id -u` -e DOCKER_USER=`id -un` -e DOCKER_PASSWORD=`id -un` -v $HOME:/home/`id -un` -v $HOME:/jupyter dclong/jupyterlab-rstudio
```
```
docker run -d -p 3737:8787 -p 3333:8888 -p 3339:8889 -e DOCKER_USER_ID=`id -u chdu` -e DOCKER_USER=chdu -e DOCKER_PASSWORD=chdu -v /wwwroot:/jupyter -v /wwwroot:/wwwroot -v /home/chdu:/home/chdu dclong/jupyterlab-rstudio
```
```
docker run -d -p 8787:8787 -p 8888:8888 -p 8889:8889 -e DOCKER_USER_ID=`id -u chzhuang` -e DOCKER_USER=chzhuang -e DOCKER_PASSWORD=chzhuang -v /wwwroot:/jupyter -v /wwwroot:/wwwroot -e /home/chzhuang:/home/chzhuang dclong/jupyterlab-rstudio
```
