FROM openjdk:8-jre
RUN wget https://github.com/thingsboard/thingsboard-gateway/releases/download/v1.2.1/tb-gateway-1.2.1.deb &&\
    dpkg -i tb-gateway-1.2.1.deb
VOLUME /var/log/tb-gateway
CMD ["/etc/init.d/tb-gateway","run"]
