#Dockerfile to generate base image on top of Fedora
FROM fedora:21
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2014.12.15
RUN yum clean all && yum update -y && yum install -y wget git git-extras vim-enhanced bash-completion
