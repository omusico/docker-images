#Dockerfile to generate base image on top of CentOS 7 with Oracle JDK
FROM centos:centos7
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2014.12.15
RUN yum install epel-release -y && yum clean all && yum update -y && yum install -y wget git
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.rpm
RUN rpm -ivh jdk-8u25-linux-x64.rpm && rm jdk-8u25-linux-x64.rpm
