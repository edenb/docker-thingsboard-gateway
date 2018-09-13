FROM openjdk:8-jre
RUN wget https://github.com/thingsboard/thingsboard-gateway/releases/download/2.1.1/tb-gateway.deb &&\
    dpkg -i tb-gateway.deb
CMD ["/etc/init.d/tb-gateway","run"]
