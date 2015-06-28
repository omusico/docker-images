#Dockerfile to generate base image on top of CentOS 7 with Oracle JDK
FROM pcompton/centos-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.06.27
ENV JAVA_HOME /opt/jdk1.8.0_45
ENV PATH $PATH:$JAVA_HOME/bin
ADD jdk-8u45-linux-x64.tar.gz /opt
RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_45/bin/java" 1
