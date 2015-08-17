#Dockerfile to generate base image on top of CentOS 7 with Oracle Server JRE
FROM pcompton/ubuntu:vivid
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.17
ENV JAVA_HOME /opt/jdk1.8.0_51
ENV PATH $PATH:$JAVA_HOME/bin
RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u51-b16/server-jre-8u51-linux-x64.tar.gz | tar -xzC /opt
RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_51/bin/java" 1
