FROM ubuntu:14.04

RUN apt-get update && apt-get install -y git curl php5-cli php5-json php5-intl php5-curl

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

ADD entrypoint.sh /entrypoint.sh

ADD ./ /var/www/
WORKDIR /var/www/

RUN rm -rf /var/www/app/logs
RUN mkdir -p /var/www/app/logs
RUN chmod -R 777 /var/www/app/cache /var/www/app/logs

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
