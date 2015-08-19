#Dockerfile to generate Java Dev Environment
FROM pcompton/dev-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.19
ENV JAVA_HOME /opt/jdk1.8.0_60
ENV JDK_HOME /opt/jdk1.8.0_60
ENV GRADLE_VERSION 2.6
ENV GRADLE_HOME /opt/gradle-${GRADLE_VERSION}-bin
ENV NODE_VERSION 0.12.7
ENV NODE_HOME /opt/node

USER root

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz | tar -xzC /opt
RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_60/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk1.8.0_60/bin/javac" 1
RUN update-alternatives --install "/usr/bin/javadoc" "javadoc" "/opt/jdk1.8.0_60/bin/javadoc" 1

RUN curl -fL https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o /gradle-${GRADLE_VERSION}-bin.zip \
  && unzip /gradle-${GRADLE_VERSION}-bin.zip -d /opt

RUN curl -fL http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | tar xzC /opt \
  && mv /opt/node-v${NODE_VERSION}-linux-x64 /opt/node

RUN curl -fL http://repo.spring.io/release/org/springframework/boot/spring-boot-cli/1.2.5.RELEASE/spring-boot-cli-1.2.5.RELEASE-bin.tar.gz | tar xzC /opt

ENV PATH ${GRADLE_HOME}/bin:${PATH}:${JAVA_HOME}/bin:${NODE_HOME}/bin:/opt/spring-boot-cli-1.2.5.RELEASE/bin

RUN npm install -g grunt-cli grunt gulp bower typescript less js-beautify jasmine babel

USER pcompton

CMD /bin/bash
