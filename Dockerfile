FROM selenium/standalone-firefox
MAINTAINER Kevin Wiliarty "kwiliarty@hampshire.edu"

USER root

ENV HOME /root
ENV COMPOSER_HOME /root

RUN apt-get clean
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libXpm4 \
    libapache2-mod-php5 \
    php5 \
    php-pear \
    php-soap \
    php-xml-parser \
    php5-common \
    php5-cli \
    php5-curl \
    php5-gd \
    php5-intl \
    php5-mysql \
    php5-xmlrpc \
    xvfb

ADD https://getcomposer.org/composer.phar /usr/local/bin/composer
RUN cd /usr/local/bin && \
        chmod +x composer

RUN apt-get clean
