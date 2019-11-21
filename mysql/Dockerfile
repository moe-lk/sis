FROM mysql:5.7


USER mysql

COPY ./my.cnf /etc/mysql/my.cnf
COPY ./Dump20190123-2 /docker-entrypoint-initdb.d/

EXPOSE 3306