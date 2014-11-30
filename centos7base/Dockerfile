#Dockerfile to generate base image on top of CentOS 7 with Oracle JDK
FROM centos:centos7
MAINTAINER Phil Compton <me@philcompton.com>
RUN yum update -y
RUN yum install epel-release -y
RUN yum install -y wget
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.rpm
RUN rpm -ivh jdk-8u25-linux-x64.rpm && rm jdk-8u25-linux-x64.rpm
RUN yum install -y git
