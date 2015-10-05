#Dockerfile to generate base image on top of Fedora with Oracle Server JRE
FROM pcompton/fedora:22
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.10.05
ENV JAVA_HOME /opt/jdk1.8.0_60
ENV PATH $PATH:$JAVA_HOME/bin
RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/server-jre-8u60-linux-x64.tar.gz | tar -xzC /opt
RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_60/bin/java" 1
