FROM phpdockerio/nginx:latest

ADD . /var/www/myapp
ADD ./nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/www/myapp

RUN rm -rf /var/www/myapp && mv ./ /var/www/myapp &&\
    find /var/www/myapp/ -type d -exec chmod 755 {} \; &&\
    find /var/www/myapp/ -type f -exec chmod 644 {} \; &&\
    chmod -R 777 /var/www/html/app/cache /var/www/html/app/logs

RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd

EXPOSE 80