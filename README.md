Current dockerfile is for python. 

Version 7.0

From version 7, switch to Python 3.9.6

build docker file

```
export VERSION=7.0
docker build --tag az-python:${VERSION} -f Dockerfile_v7 .
``` 

Push to Dockerhub:

```
docker tag az-python:7.0 {dockerhub name}/az-python:7.0
docker login --username {USERNAME} --password {PASSWORD}
docker push {dockerhub name}/az-python:7.0
```
