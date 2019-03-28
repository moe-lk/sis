FROM imkulikov/nginx-sticky

ADD ./app /var/www/myapp

ADD ./nginx.conf /etc/nginx/conf.d/03-default.conf
RUN wget https://github.com/nginxinc/nginx-amplify-agent/raw/master/packages/install.sh
RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd
ENTRYPOINT ['sh' ,'./install.sh']
EXPOSE 80

