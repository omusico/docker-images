#Dockerfile to generate base image on top of CentOS 7 with Oracle JDK
FROM pcompton/centos-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.03
RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm > jdk-8u45-linux-x64.rpm \
  && rpm -ivh jdk-8u45-linux-x64.rpm \
  && rm jdk-8u45-linux-x64.rpm
