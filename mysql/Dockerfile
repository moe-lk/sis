FROM mysql:5.7


USER mysql

COPY ./my.cnf /etc/mysql/my.cnf
COPY ./Dump20190205-1 /docker-entrypoint-initdb.d/
COPY ./add-areas /docker-entrypoint-initdb.d/

EXPOSE 3306



