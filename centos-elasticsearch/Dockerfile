#Dockerfile to generate elastic search instance on top of CentOS 7
FROM pcompton/centos-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.10
ENV ELASTIC_VERSION 1.6.0
ENV ES_HOME /opt/elasticsearch

RUN yum install -y unzip

RUN curl -fL https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-${ELASTIC_VERSION}.zip -o /elasticsearch-${ELASTIC_VERSION}.zip \
  && unzip /elasticsearch-${ELASTIC_VERSION}.zip \
  && mv /elasticsearch-${ELASTIC_VERSION} /opt/elasticsearch \
  && rm /elasticsearch-${ELASTIC_VERSION}.zip
ENV PATH ${ES_HOME}/bin:$PATH

RUN ${ES_HOME}/bin/plugin -i elasticsearch/marvel/latest
RUN echo 'marvel.agent.enabled: false' >> ${ES_HOME}/config/elasticsearch.yml

EXPOSE 9200 9300

CMD ["elasticsearch"]
