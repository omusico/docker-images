#Dockerfile to generate JDK Base Image
FROM pcompton/fedora:22
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.09.17
ENV JDK_SHA256 ebe51554d2f6c617a4ae8fc9a8742276e65af01bd273e96848b262b3c05424e5
ENV JAVA_HOME /opt/jdk1.8.0_60
ENV JDK_HOME /opt/jdk1.8.0_60

WORKDIR /opt
RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz \
  -o jdk-8u60-linux-x64.tar.gz \
  && echo "$JDK_SHA256 jdk-8u60-linux-x64.tar.gz" | sha256sum -c - \
  && tar xzf jdk-8u60-linux-x64.tar.gz && rm jdk-8u60-linux-x64.tar.gz
RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_60/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk1.8.0_60/bin/javac" 1
RUN update-alternatives --install "/usr/bin/javadoc" "javadoc" "/opt/jdk1.8.0_60/bin/javadoc" 1
WORKDIR /
