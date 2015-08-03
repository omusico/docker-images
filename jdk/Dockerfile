#Dockerfile to generate base image on top of Ubuntu with Oracle JDK
FROM pcompton/vivid:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.03

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz | tar -xzC /opt

RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_51/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk1.8.0_51/bin/javac" 1
RUN update-alternatives --install "/usr/bin/javadoc" "javadoc" "/opt/jdk1.8.0_51/bin/javadoc" 1
