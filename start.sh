docker rmi -f ether_browser
docker build  -t ether_browser  .


docker rm -f ether_browser
docker run --name  ether_browser   -p:8000:8000   ether_browser

