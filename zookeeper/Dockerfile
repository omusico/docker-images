#Dockerfile to generate zookeeper node
FROM pcompton/oracle-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.10.06
ENV ZOOKEEPER_VERSION 3.4.6
ENV ZK_HOME /opt/zookeeper-${ZOOKEEPER_VERSION}
ENV SERVER1 localhost:2888:3888
ENV CLIENT_PORT 2181
ENV MYID 1

RUN curl -fL http://mirror.symnds.com/software/Apache/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz | tar -xzC /opt \
  && mkdir -p /tmp/zookeeper

ADD startup.sh /startup.sh
RUN chmod a+x /startup.sh

EXPOSE 2181 2182 2183 2887 2888 2889 3887 3888 3889

WORKDIR /opt/zookeeper-${ZOOKEEPER_VERSION}

VOLUME ["/opt/zookeeper-${ZOOKEEPER_VERSION}/conf", "/tmp/zookeeper"]

ENTRYPOINT ["/startup.sh"]
CMD [""]
