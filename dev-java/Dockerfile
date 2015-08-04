#Dockerfile to generate Java Dev Environment
FROM pcompton/dev-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.03
ENV JAVA_HOME /opt/jdk1.8.0_51
ENV JDK_HOME /opt/jdk1.8.0_51
ENV GRADLE_VERSION 2.5
ENV GRADLE_HOME /opt/gradle-${GRADLE_VERSION}-bin
ENV NODE_VERSION 0.12.7
ENV NODE_HOME /opt/node

USER root

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz | tar -xzC /opt
RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_51/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk1.8.0_51/bin/javac" 1
RUN update-alternatives --install "/usr/bin/javadoc" "javadoc" "/opt/jdk1.8.0_51/bin/javadoc" 1

RUN curl -fL https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o /gradle-${GRADLE_VERSION}-bin.zip \
  && unzip /gradle-${GRADLE_VERSION}-bin.zip -d /opt

RUN curl -fL http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | tar xzC /opt \
  && mv /opt/node-v${NODE_VERSION}-linux-x64 /opt/node

ENV PATH ${GRADLE_HOME}/bin:${PATH}:${JAVA_HOME}/bin:${NODE_HOME}/bin

RUN npm install -g grunt-cli grunt gulp bower typescript less js-beautify jasmine

USER pcompton

CMD /bin/bash
