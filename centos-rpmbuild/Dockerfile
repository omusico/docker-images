#Image for rpm packaging on Centos7
FROM pcompton/centos-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.06.23
RUN yum clean all && yum update -y && yum install -y rpmdevtools mock mock-scm vim-enhanced
RUN rpmdev-setuptree
