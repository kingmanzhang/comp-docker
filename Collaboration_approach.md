Use Docker to start the Rstudio container. 

* interestingly, one should not use "--network host". The container are still able to call services from host at host.docker.internal

Collaboration among different people requires writing code to the same repository and data (especially intermediary data that needs to be shared). Therefore, we need to mount two directories when starting the container:

1. mount the code repo.
2. mount the OneDrive folder. 

For RStudio,
```
docker run -d -p 8787:8787 -e PASSWORD=123456 \
-v /Users/xingminzhang/git/s4-pd-pharma-BD:/home/rstudio/s4-pd-pharma-BD \
-v /Users/xingminzhang/OneDrive\ -\ Mount\ Sinai\ Genomics,\ Inc:/home/rstudio/OneDrive \
--name Biopharma_RStudio \
rocker/tidyverse 
```

For Jupyter Notebook,
```
docker run -d -p 8888:8888 \
-v /Users/xingminzhang/git/s4-pd-pharma-BD:/home/rstudio/s4-pd-pharma-BD \
-v /Users/xingminzhang/OneDrive\ -\ Mount\ Sinai\ Genomics,\ Inc:/home/rstudio/OneDrive \
--name Biopharma_Jupyter \
jupyter/datascience-notebook 
```

After starting the Jupyter Notebook, one has to log into the container to retrieve the token:
```
docker execute Biopharma_Jupyter bash
# within the docker container, run 
jupyter server list
# the token will show
```

# TODO
