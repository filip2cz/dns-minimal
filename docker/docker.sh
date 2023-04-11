sudo docker build . -t dns-minimal
sudo docker run -it --network="host" --rm dns-minimal
