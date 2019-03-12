<<<<<<< HEAD
# FROM phpearth/php:7.2-nginx
=======
FROM phpearth/php:7.2-nginx

ADD ./app /var/www/myapp
>>>>>>> a536c14cd5efa36004d18f5a5836ae7b8dfe8821

ADD ./nginx.conf /etc/nginx/conf.d/default.conf

<<<<<<< HEAD
# ADD ./nginx.conf /etc/nginx/conf.d/default.conf

# RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd

# EXPOSE 80

FROM imkulikov/nginx-sticky


ADD ./app /var/www/myapp

ADD ./nginx.conf /etc/nginx/conf.d/03-default.conf

RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd

EXPOSE 80
=======
RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd

EXPOSE 80
>>>>>>> a536c14cd5efa36004d18f5a5836ae7b8dfe8821
