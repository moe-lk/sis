FROM phpearth/php:7.2-nginx

ADD ./app /var/www/myapp

ADD ./nginx.conf /etc/nginx/conf.d/default.conf

RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd

EXPOSE 80