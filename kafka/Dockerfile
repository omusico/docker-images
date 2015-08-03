#Dockerfile to generate a kafka images on top of Vivid
FROM pcompton/server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.03
ENV SCALA_VERSION 2.11
ENV KAFKA_VERSION 0.8.2.1
ENV KAFKA_HOME /opt/kafka_${SCALA_VERSION}-${KAFKA_VERSION}
ENV ZK_CONF localhost:2181,localhost:2182,localhost:2183
ENV BROKER_LIST localhost:9092
ENV KAFKA_PORT 9092
ENV NUM_PARTITIONS 2
ENV BROKER_ID = 0

RUN curl -fL http://mirrors.advancedhosters.com/apache/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz | tar -xzC /opt

ENV PATH ${KAFKA_HOME}/bin:${PATH}

ADD kafka-start.sh /kafka-start.sh
RUN chmod a+x /kafka-start.sh

ADD server.properties $KAFKA_HOME/config/server.properties.template

EXPOSE 9092 9093 9094

ENTRYPOINT ["/kafka-start.sh"]
