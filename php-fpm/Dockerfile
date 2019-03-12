FROM phpdockerio/php71-fpm:latest

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install php7.1-gd  php7.1-mysql php7.1-intl php7.1-mbstring php7.1-sqlite3\
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*



# CMD ['php','cake.php','migrations','migrate','../config/Snapshot/3.11.0/20171129034724_V3130.php']

# CMD ['php','cake.php','migrations','migrate']

ADD ./app /src
ADD ./php-ini-overrides.ini /etc/php/7.1/fpm/conf.d/99-overrides.ini
ADD ./overrides.conf /etc/php/7.1/fpm/pool.d/z-overrides.conf

WORKDIR /var/www
RUN mkdir myapp

RUN rm -rf /var/www/myapp && mv /src /var/www/myapp &&\
    find /var/www/myapp/ -type d -exec chmod 777 {} \; &&\
    find /var/www/myapp/ -type f -exec chmod 644 {} \; &&\
    find /var/www/myapp/tmp -type d -exec chmod 777 {} \; &&\
    find /var/www/myapp/logs -type d -exec chmod 777 {} \; 


WORKDIR "/var/www/myapp"

RUN chown -R www-data:www-data /var/www

RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd

