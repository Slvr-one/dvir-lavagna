#!/usr/bin/env bash

echo -e "\n\nremoving old containers\n\n"
docker rm -f $(docker ps -aq)
#docker image rm -f $(docker images -q)

echo -e "\n\n now building and runnig if build is well--\n\n"
#docker build --no-cache -t dvir-lavagna . && docker run -it -p 8080:8080 dvir-lavagna || echo -e "\n docker run went wrong!!\nexit"
docker build -t lavagna . && docker run -itd -p 8080:8080 --name dvir-lavagna lavagna || echo -e "\n docker run went wrong!!\nexit" 

