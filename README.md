Current dockerfile is for python. 

Version 6.0

build docker file

```
docker build --tag az-python:{VERSION} .
``` 

Push to Dockerhub:

```
docker tag az-python:6.0 {dockerhub name}/az-python:6.0
docker login --username {USERNAME} --password {PASSWORD}
docker push {dockerhub name}/az-python:6.0
```
