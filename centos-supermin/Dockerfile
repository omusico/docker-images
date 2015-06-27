#Dockerfile for building new base images
# supermin --names 'bash' 'coreutils' 'yum' -o supermin.d
FROM centos:centos7
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.06.26
RUN yum install epel-release -y && yum clean all && yum update -y && yum install -y vim-enhanced supermin
RUN mkdir /supermin.d

VOLUME /supermin.d
CMD ["/bin/bash"]
