FROM phpdockerio/nginx:latest

COPY . /src

ADD ./nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir /var/www/myapp/tmp && mkdri /var/www/myapp/log

RUN rm -rf /var/www/myapp && mv /src /var/www/myapp &&\
    find /var/www/myapp/ -type d -exec chmod 755 {} \; &&\
    find /var/www/myapp/ -type f -exec chmod 644 {} \; &&\
    find /var/www/myapp/tmp -type f -exec chmod 777 {} \; &&\
    find /var/www/myapp/logs -type f -exec chmod 777 {} \;

RUN chmod -R 777 /var/www/myapp/tmp
RUN chmod -R 777 /var/www/myapp/logs

RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd

EXPOSE 80