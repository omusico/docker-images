#Dockerfile to generate base image on top of Ubuntu with Oracle JDK
FROM pcompton/ubuntu:vivid
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.19

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz | tar -xzC /opt

RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_60/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk1.8.0_60/bin/javac" 1
RUN update-alternatives --install "/usr/bin/javadoc" "javadoc" "/opt/jdk1.8.0_60/bin/javadoc" 1
