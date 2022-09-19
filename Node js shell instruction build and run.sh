$ docker build -t mjgrodon0766/node-web-app .

$ docker run -p 49160:8080 -d mjgrodon0766/node-web-app

# Get container ID
$ docker ps
# Print app output
$ docker logs <container id>
# Example
#Running on http://localhost:8080

# Enter the container
$ docker exec -it <container id> /bin/bash

$ docker ps
# Example
#ecce33b30ebf  mjgrodon0766/node-web-app:latest  npm start  ...   49160->8080

sudo apt-get install curl
#calling app
$ curl -i localhost:49160