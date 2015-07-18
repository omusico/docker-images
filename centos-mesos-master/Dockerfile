#Dockerfile to generate a mesos master on top of CentOS 7
FROM pcompton/centos-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.18
ENV MESOS_INSTALL_VERSION 0.22.1
ENV MARATHON_VERSION 0.9.0
ENV CHRONOS_VERSION 2.3.4
ENV ZK_CONF zk://localhost:2181,localhost:2182,localhost:2183/mesos
ENV QUORUM 1

RUN rpm -Uvh http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm \
  && yum install -y mesos marathon chronos

ADD start.sh /start.sh
RUN chmod a+x /start.sh

ENTRYPOINT ["/start.sh"]
CMD [""]
