#Dockerfile to generate build environment on top of CentOS 7
FROM pcompton/centos7base
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.02.03
ENV GRADLE_HOME /usr/local
ENV GRADLE_VERSION 2.2.1
ENV JENKINS_VERSION 1.598
RUN yum update -y \
    && yum install -y zip unzip nodejs nodejs-cli nodejs-grunt nodejs-grunt-cli subversion.x86_64
RUN wget https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip && \
    unzip gradle*.zip && \
    cp -r gradle*/* /usr/local && \
    rm gradle* -rf
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo \
    && rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key \
    && yum install -y jenkins 
ENTRYPOINT ["java", "-jar", "/usr/lib/jenkins/jenkins.war"]
EXPOSE 8080
CMD [""]
