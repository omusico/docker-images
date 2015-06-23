#Dockerfile to generate jenkins build environment on top of CentOS 7
FROM pcompton/centos-jdk:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.06.23
ENV GRADLE_HOME /opt/app/gradle
ENV GRADLE_VERSION 2.4
ENV JENKINS_VERSION 1.617
ENV NODE_VERSION 0.12.5
ENV NODE_HOME /opt/app/node
RUN yum update -y && yum install -y zip unzip subversion.x86_64
RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-all.zip && \
    unzip gradle*.zip && \
    mkdir -p /opt/app/gradle && \
    cp -r gradle*/* /opt/app/gradle/ && \
    rm gradle* -rf
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo \
    && rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key \
    && yum install -y jenkins 
RUN wget http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz && \
    mkdir -p /opt/app/node && \
	tar xzf node*.tar.gz && \
	cp -r node*/* /opt/app/node/ && \
	rm node* -rf
ENTRYPOINT ["java", "-jar", "/usr/lib/jenkins/jenkins.war"]
EXPOSE 8080
CMD [""]
