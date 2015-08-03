#Dockerfile to generate Scala Dev Environment
FROM pcompton/dev-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.03
ENV JAVA_HOME /opt/jdk1.8.0_51
ENV JDK_HOME /opt/jdk1.8.0_51
ENV SCALA_VERSION 2.11.7
ENV SCALA_HOME /opt/scala-${SCALA_VERSION}
ENV SBT_VERSION 0.13.8
ENV SBT_HOME /opt/sbt

USER root

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz | tar -xzC /opt
RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_51/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk1.8.0_51/bin/javac" 1
RUN update-alternatives --install "/usr/bin/javadoc" "javadoc" "/opt/jdk1.8.0_51/bin/javadoc" 1

RUN curl -fL http://downloads.typesafe.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz | tar -xzC /opt
RUN curl -fL https://dl.bintray.com/sbt/native-packages/sbt/${SBT_VERSION}/sbt-${SBT_VERSION}.tgz | tar -xzC /opt

ENV PATH ${SCALA_HOME}/bin:${SBT_HOME}/bin:${PATH}:${JAVA_HOME}/bin

USER pcompton

RUN git clone https://github.com/derekwyatt/vim-scala.git $HOME/.vim/bundle/vim-scala

CMD /bin/bash
