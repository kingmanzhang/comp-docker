Current dockerfile is for python. 

Version 4.0

build docker file

```
docker build --tag s4-pd-python:{VERSION} .
``` 

Push to Dockerhub:

```
docker tag s4-pd-python:4.0 {dockerhub name}/s4-pd-python:4.0
docker login --username {USERNAME} --password {PASSWORD}
docker push {dockerhub name}/s4-pd-python:4.0
```

s4-pd-python is used to support clinical trials by Pharma Delivery. 
