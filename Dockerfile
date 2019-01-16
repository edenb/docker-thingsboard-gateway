FROM openjdk:8-jre
RUN wget https://github.com/thingsboard/thingsboard-gateway/releases/download/2.2.1rc/tb-gateway-2.2.1rc.deb &&\
    dpkg -i tb-gateway-2.2.1rc.deb
CMD ["/etc/init.d/tb-gateway","run"]
