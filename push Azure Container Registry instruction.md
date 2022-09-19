az login
az acr login --name ContainerRegistry-Vahighan

docker login ContainerRegistry-Vahighan.azurecr.io

docker pull mcr.microsoft.com/oss/nginx/nginx:1.15.5-alpine

docker run -it --rm -p 8080:80 mcr.microsoft.com/oss/nginx/nginx:1.15.5-alpine

docker tag mcr.microsoft.com/oss/nginx/nginx:1.15.5-alpine ContainerRegistry-Vahighan.azurecr.io/samples/nginx

docker pull ContainerRegistry-Vahighan.azurecr.io/samples/nginx

docker run -it --rm -p 8080:80 ContainerRegistry-Vahighan.azurecr.io/samples/nginx