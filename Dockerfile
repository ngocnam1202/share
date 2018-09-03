FROM ubuntu

MAINTAINER Nam Pham Ngoc

RUN DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y nginx

#RUN echo "mysql-server mysql-server/root_password password root" | debconf-set-selections \
#    && echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections \
#    && apt-get install -y mysql-server

WORKDIR /vendor

#COPY start.sh /vendor

#RUN chmod a+x /vendor/*

RUN     touch newrelic.yml
ENV     NEW_RELIC_APP_NAME ''
ENV     NEW_RELIC_LICENSE_KEY ''
ENV     NEW_RELIC_LOG STDOUT

#ENTRYPOINT ["/vendor/start.sh"]

EXPOSE 80