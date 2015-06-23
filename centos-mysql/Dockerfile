#MySQL Image on top of CentOS
FROM pcompton/centos-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.06.23
RUN rpmkeys --import http://repo.mysql.com/RPM-GPG-KEY-mysql \
	&& rpm -ivh https://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm \
	&& yum install -y mysql-community-server


VOLUME /var/lib/mysql

EXPOSE 3306
CMD ["mysqld"]