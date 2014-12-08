#Dockerfile to generate CentOS 5 based rpmbuild environment
FROM centos:centos5
MAINTAINER Phil Compton <me@philcompton.com>
RUN yum install epel-release -y && yum clean all && yum update -y && yum install -y wget git rpmdevtools mock mock-scm vim-enhanced emacs
RUN rpmdev-setuptree
