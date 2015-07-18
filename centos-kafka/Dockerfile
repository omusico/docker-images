#Dockerfile to generate a kafka images on top of CentOS 7
FROM pcompton/centos-jdk:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.18
ENV KAFKA_VERSION 0.8.2.1
ENV KAFKA_HOME /opt/kafka
ENV SCALA_VERSION 2.11
ENV ZK_CONF localhost:2181,localhost:2182,localhost:2183
ENV BROKER_LIST localhost:9092
ENV KAFKA_PORT 9092
ENV NUM_PARTITIONS 2
ENV BROKER_ID = 0

RUN curl -fl -o /kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz http://mirrors.advancedhosters.com/apache/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
  && tar xzf kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
  && mv kafka_${SCALA_VERSION}-${KAFKA_VERSION} /opt/kafka \
  && rm kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz

ENV PATH ${KAFKA_HOME}/bin:${PATH}

ADD kafka-start.sh /kafka-start.sh
RUN chmod a+x /kafka-start.sh

ADD server.properties $KAFKA_HOME/config/server.properties.template

EXPOSE 9092 9093 9094

ENTRYPOINT ["/kafka-start.sh"]
