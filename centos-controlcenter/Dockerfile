#Dockerfile to generate a hub for command line tools for other images on top of CentOS 7
FROM pcompton/centos-jdk:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.11
ENV ZOOKEEPER_VERSION 3.4.6
ENV ZK_HOME /opt/zookeeper
ENV KAFKA_VERSION 0.8.2.1
ENV KAFKA_HOME /opt/kafka
ENV SCALA_VERSION 2.11

ADD MariaDB.repo /etc/yum.repos.d/MariaDB.repo
RUN yum install -y MariaDB-client git vim-enhanced wget

RUN curl -fL -o /zookeeper.tar.gz http://mirror.symnds.com/software/Apache/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz \
  && tar xzf zookeeper.tar.gz \
  && mv /zookeeper-${ZOOKEEPER_VERSION} /opt/zookeeper \
  && rm zookeeper.tar.gz

RUN curl -fl -o /kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz http://mirrors.advancedhosters.com/apache/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
  && tar xzf kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
  && mv kafka_${SCALA_VERSION}-${KAFKA_VERSION} /opt/kafka \
  && rm kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz

ENV PATH ${ZK_HOME}/bin:${KAFKA_HOME}/bin:${PATH}

CMD /bin/bash
