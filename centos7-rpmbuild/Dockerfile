#Image for rpm packaging on Centos7
FROM pcompton/centos7base
MAINTAINER Phil Compton <me@philcompton.com>
RUN yum clean all && yum update -y && yum install -y rpmdevtools mock mock-scm vim-enhanced emacs
RUN rpmdev-setuptree
