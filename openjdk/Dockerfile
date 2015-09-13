#Dockerfile to generate base image on top of Fedora with OpenJDK 8
FROM pcompton/fedora:22
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.09.13

RUN dnf install -y java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-src.x86_64 java-1.8.0-openjdk-devel.x86_64
