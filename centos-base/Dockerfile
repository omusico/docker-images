#Dockerfile to generate base CentOS 7 Image
FROM centos:centos7
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.20
RUN yum install epel-release -y && yum update -y && yum clean all

CMD /bin/bash
