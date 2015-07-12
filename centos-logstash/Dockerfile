#Dockerfile to generate logstash instance on top of CentOS 7
FROM pcompton/centos-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.12
ENV LOGSTASH_VERSION 1.4.3
ENV LOGSTASH_HOME /opt/logstash

RUN curl -fL -o /logstash-${LOGSTASH_VERSION}.tar.gz  https://download.elastic.co/logstash/logstash/logstash-${LOGSTASH_VERSION}.tar.gz \
    && tar -xzf ./logstash-${LOGSTASH_VERSION}.tar.gz \
    && mv /logstash-${LOGSTASH_VERSION} ${LOGSTASH_HOME} \
    && rm /logstash-${LOGSTASH_VERSION}.tar.gz

ENV PATH ${LOGSTASH_HOME}/bin:$PATH

# Install contrib plugins
RUN plugin install contrib

EXPOSE 9292

CMD logstash
