# docker
#Docker configurations for various product
# Instructions here : https://www.youtube.com/watch?v=CsWoMpK3EtE


sudo apt-get upgrade
sudo apt-get update

curl "http://localhost:3000"

docker build -t node-docker-tutorial ./node

# For testing run in the foreground
docker run -it -p 9000:3000 node-docker-tutorial
curl "http://localhost:9000"

# Run in the background (daemon)
docker run -d -p 9000:3000 node-docker-tutorial

#Running containers
docker ps

