#Image for rpm packaging on Centos7
FROM pcompton/centos-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.03
RUN yum clean all && yum update -y && yum install -y rpmdevtools mock mock-scm vim-enhanced

# Setup rpmbuild user
RUN mkdir -p /home/rpmbuild
RUN useradd -d /home/rpmbuild -u 9000 -m -s /bin/bash rpmbuild
RUN chown rpmbuild /home/rpmbuild

# Make rpmbuild home mountable for persistence
VOLUME /home/rpmbuild

# Login as rpmbuild
ENV HOME /home/rpmbuild
USER rpmbuild

CMD /bin/bash
