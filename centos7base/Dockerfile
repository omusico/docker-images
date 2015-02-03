#Dockerfile to generate base image on top of CentOS 7 with Oracle JDK
FROM centos:centos7
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.02.03
RUN yum install epel-release -y && yum clean all && yum update -y && yum install -y wget git
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u31-b13/jdk-8u31-linux-x64.rpm \
   && rpm -ivh jdk-8u31-linux-x64.rpm && rm jdk-8u31-linux-x64.rpm
