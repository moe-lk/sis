FROM imkulikov/nginx-sticky

ADD ./app /var/www/myapp


RUN apk add   --no-cache netcat-openbsd bc curl wget git bash  bash-completion bash-doc
RUN apk add  --no-cache libressl

WORKDIR /opt
RUN git clone https://github.com/Neilpang/acme.sh.git
WORKDIR /opt/acme.sh
RUN ./acme.sh --install
USER root
RUN echo 'PATH=$PATH:~/' > ~/.bash_profile
RUN source ~/.bash_profile
ENV D=/var/www/myapp/webroor

RUN mkdir -vp ${D}/.well-known/acme-challenge/
RUN chown -R nginx:nginx ${D}/.well-known/acme-challenge/
RUN chmod -R 0555 ${D}/.well-known/acme-challenge/
RUN apk add libressl

RUN mkdir -p /etc/nginx/ssl/letsencrypt/sis.moe.gov.lk/
WORKDIR /etc/nginx/ssl/letsencrypt/sis.moe.gov.lk
RUN openssl dhparam -dsaparam -out dhparams.pem 4096

WORKDIR /opt/acme.sh
RUN ./acme.sh --issue -w $D -d sis.moe.gov.lk -k 4096

ADD ./nginx.main.conf /etc/nginx/conf.d/nginx.conf


RUN ./acme.sh --installcert -d demo.sis.moe.gov.lk \
--keypath /etc/nginx/ssl/letsencrypt/demo.sis.moe.gov.lk/demo.sis.moe.gov.lk.key \
--fullchainpath /etc/nginx/ssl/letsencrypt/demo.sis.moe.gov.lk/demo.sis.moe.gov.lk.cer \
--reloadcmd '/etc/init.d/nginx restart' --no-cache

# RUN crontab -l 0 0 * * * "/root/.acme.sh"/acme.sh --cron --home "/root/.acme.sh" > /dev/null

RUN sed -ri 's/^www-data:x:82:82:/www-data:x:1000:50:/' /etc/passwd

EXPOSE 80
