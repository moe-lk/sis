FROM imkulikov/nginx-sticky

ADD ./app /var/www/myapp

ADD ./nginx.conf /etc/nginx/conf.d/03-default.conf
RUN wget -L -O https://github.com/nginxinc/nginx-amplify-agent/raw/master/packages/install.sh
ENV API_KEY='8ade0b44020b1e31cdac113c1a708b14' 
CMD ['sh' ,'./install.sh']

RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd

EXPOSE 80
