# Trusty based image for Jenkins
FROM ubuntu:trusty
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.02.08
ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 31
ENV JAVA_VERSION_BUILD 13
ENV JAVA_PACKAGE       jdk
ENV GRADLE_VERSION 2.2.1
ENV JENKINS_VERSION 1.598
ENV IOJS_VERSION 1.1.0

ENV JAVA_HOME /opt/jdk
ENV GRADLE_HOME /opt/gradle-${GRADLE_VERSION}
ENV IOJS_HOME /opt/iojs-v${IOJS_VERSION}-linux-x64
ENV JENKINS_HOME /opt/jenkins
ENV PATH ${PATH}:${JAVA_HOME}/bin:${GRADLE_HOME}/bin:${IOJS_HOME}/bin

RUN apt-get update && apt-get install -y wget git curl zip xz-utils

RUN curl -kLOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie"\
  http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz &&\
    tar xzf ${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz -C /opt &&\
    rm ${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz &&\
    ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/jdk
RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip && \
    unzip gradle*.zip && \
    cp -r gradle-${GRADLE_VERSION} /opt/ && \
    rm gradle* -rf
RUN wget https://iojs.org/dist/v${IOJS_VERSION}/iojs-v${IOJS_VERSION}-linux-x64.tar.xz &&\
    tar xf iojs-v${IOJS_VERSION}-linux-x64.tar.xz -C /opt &&\
    rm iojs-v${IOJS_VERSION}-linux-x64.tar.xz
RUN wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war &&\
    mkdir -p /opt/jenkins/plugins &&\
    mv jenkins.war ${JENKINS_HOME}
RUN wget http://updates.jenkins-ci.org/latest/gradle.hpi &&\
    mv gradle.hpi ${JENKINS_HOME}/plugins/ &&\
    wget http://updates.jenkins-ci.org/latest/git.hpi &&\
    mv git.hpi ${JENKINS_HOME}/plugins/ &&\
    wget http://updates.jenkins-ci.org/latest/git-client.hpi &&\
    mv git-client.hpi ${JENKINS_HOME}/plugins/ &&\
    wget http://updates.jenkins-ci.org/latest/credentials.hpi &&\
    mv credentials.hpi ${JENKINS_HOME}/plugins/ &&\
    wget http://updates.jenkins-ci.org/latest/scm-api.hpi &&\
    mv scm-api.hpi ${JENKINS_HOME}/plugins/ &&\
    wget http://updates.jenkins-ci.org/latest/matrix-project.hpi &&\
    mv matrix-project.hpi ${JENKINS_HOME}/plugins/ &&\
    wget http://updates.jenkins-ci.org/latest/junit.hpi &&\
    mv junit.hpi ${JENKINS_HOME}/plugins/

RUN npm install -g grunt grunt-cli gulp

ENTRYPOINT ["java", "-jar", "/opt/jenkins/jenkins.war"]
EXPOSE 8080
CMD [""]

