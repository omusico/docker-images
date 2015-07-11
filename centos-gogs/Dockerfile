#Dockerfile to generate gogs/git container
FROM pcompton/centos-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.11
ENV GOGS_VERSION 0.6.1
ENV ADMIN_USER_CREATE true
ENV ADMIN_USER_NAME gadmin
ENV ADMIN_USER_EMAIL gadmin@gogs.local
ENV ADMIN_USER_PASSWORD s3cret_sauce
ENV GOGS_SECURITY__INSTALL_LOCK true
ENV GOGS_DATABASE__DB_TYPE sqlite3
ENV GOGS_RUN_USER git
ENV GOGS_RUN_MODE prod


RUN yum install -y openssh-server sqlite unzip git supervisor \
    && yum clean all \
    && rm -f /etc/ssh/ssh_host_*_key_*

RUN curl -fL -o /tmp/gogs.zip https://github.com/gogits/gogs/releases/download/v${GOGS_VERSION}/linux_amd64.zip \
    && cd /opt && unzip /tmp/gogs.zip \
    && rm -rf /tmp/gogs.zip

RUN chmod +x /opt/gogs/gogs \
    && useradd -mr git \
    && mkdir -p /opt/gogs/data /opt/gogs/custom/conf /opt/gogs/log \
    && chown -R git:git /opt/gogs/data /opt/gogs/custom/conf/ /opt/gogs/log

ADD supervisord.conf /opt/gogs/supervisord.conf
ADD start.sh /start.sh
RUN chmod a+x /start.sh

ADD gogs-wrapper /opt/gogs/gogs-wrapper
RUN chmod a+x /opt/gogs/gogs-wrapper

VOLUME /opt/gogs/data /home/git

EXPOSE 22 3000

CMD ["/start.sh"]
