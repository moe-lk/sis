FROM imkulikov/nginx-sticky

ADD ./app /var/www/myapp

ADD ./nginx.main.conf /etc/nginx/nginx.conf
ADD ./nginx.conf /etc/nginx/conf.d/03-default.conf

RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd

EXPOSE 80
