#Dockerfile to generate MariaDB Server image
FROM pcompton/centos-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.12
ENV TERM="xterm" DATADIR="/var/lib/mysql"
ENV MYSQL_USER="myuser"
ENV MYSQL_PASSWORD="s3cret_sauce" MYSQL_ROOT_PASSWORD="s3cret_sauce"

ADD MariaDB.repo /etc/yum.repos.d/MariaDB.repo
RUN yum install -y MariaDB-server MariaDB-client

ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod a+x /docker-entrypoint.sh
ADD server.cnf /etc/my.cnf.d/server.cnf

chown -R mysql:mysql ${DATADIR}

EXPOSE 3306

USER mysql
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["mysqld"]
