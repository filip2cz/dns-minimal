FROM alpine
WORKDIR /root
RUN ["wget", "https://github.com/filip2cz/dns-minimal/raw/main/files/setup.sh"]
RUN ["/bin/ash", "setup.sh"]
CMD ["/bin/ash", "-l"]
