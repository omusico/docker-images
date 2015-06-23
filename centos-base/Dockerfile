#Dockerfile to generate base CentOS 7 Image
FROM centos:centos7
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.06.23
RUN yum install epel-release -y && yum clean all && yum update -y && yum install -y wget git
