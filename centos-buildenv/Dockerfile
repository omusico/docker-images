#Dockerfile to generate build environment on top of CentOS 7
FROM pcompton/centos7base
MAINTAINER Phil Compton <me@philcompton.com>
ENV GRADLE_HOME /usr/local
ENV GRADLE_VERSION 2.2.1
ENV JENKINS_VERSION 1.580.1
RUN yum update -y
RUN yum install -y zip unzip
RUN yum install -y nodejs nodejs-cli nodejs-grunt nodejs-grunt-cli
RUN wget https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip && \
    unzip gradle*.zip && \
    cp -r gradle*/* /usr/local && \
    rm gradle* -rf
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
RUN rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
RUN yum install -y jenkins
RUN yum install -y subversion.x86_64
ENTRYPOINT ["java", "-jar", "/usr/lib/jenkins/jenkins.war"]
EXPOSE 8080
CMD [""]
