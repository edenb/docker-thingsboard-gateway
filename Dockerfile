FROM openjdk:8-jre
RUN wget https://github.com/thingsboard/thingsboard-gateway/releases/download/v2.0.4-draft1/tb-gateway.deb &&\
    dpkg -i tb-gateway.deb
CMD ["/etc/init.d/tb-gateway","run"]
