#Dockerfile to generate jenkins build environment on top of CentOS 7
FROM pcompton/centos-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.07
ENV ZOOKEEPER_VERSION 3.4.6
ENV ZK_HOME /opt/zookeeper

RUN curl -fL http://mirror.symnds.com/software/Apache/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz -o /zookeeper-${ZOOKEEPER_VERSION}.tar.gz \
  && tar xzf zookeeper-${ZOOKEEPER_VERSION}.tar.gz \
  && mv /zookeeper-${ZOOKEEPER_VERSION} /opt/zookeeper \
  && rm zookeeper-${ZOOKEEPER_VERSION}.tar.gz \
  && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
  && mkdir -p /tmp/zookeeper

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

VOLUME ["/opt/zookeeper/conf", "/tmp/zookeeper"]

ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]
