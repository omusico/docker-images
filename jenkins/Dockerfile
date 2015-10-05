#Dockerfile to generate jenkins build environment
FROM pcompton/oracle-jdk:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.10.05
ENV GRADLE_VERSION 2.7
ENV GRADLE_HOME /opt/gradle-${GRADLE_VERSION}-bin
ENV JENKINS_VERSION 1.631
ENV JENKINS_HOME /var/jenkins_home
ENV NODE_VERSION 4.1.1
ENV NODE_HOME /opt/node
ENV MAVEN_VERSION 3.3.3
ENV MAVEN_HOME /opt/apache-maven-${MAVEN_VERSION}
ENV JAVA_HOME /usr/java/jdk1.8.0_60
ENV JDK_HOME /usr/java/jdk1.8.0_60

ENV PATH ${PATH}:${JDK_HOME}/bin:${MAVEN_HOME}/bin:${GRADLE_HOME}/bin:${NODE_HOME}/bin

RUN mkdir -p $JENKINS_HOME/plugins
RUN useradd -d "$JENKINS_HOME/worker" -u 1000 -m -s /bin/bash jenkins
RUN mkdir -p $JENKINS_HOME/jobs

ADD config.xml $JENKINS_HOME/config.xml
ADD hudson.plugins.gradle.Gradle.xml $JENKINS_HOME/hudson.plugins.gradle.Gradle.xml
ADD nodejs.xml $JENKINS_HOME/nodejs.xml

RUN chown -R jenkins "$JENKINS_HOME"

RUN dnf upgrade && dnf install -y zip unzip subversion git && dnf clean all
RUN curl -fL https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o /gradle-${GRADLE_VERSION}-bin.zip \
    && unzip /gradle-${GRADLE_VERSION}-bin.zip -d /opt && mv /opt/gradle-${GRADLE_VERSION} /opt/gradle \
    && rm /gradle-${GRADLE_VERSION}-bin.zip

RUN mkdir -p /usr/share/jenkins/ && curl -fL http://mirrors.jenkins-ci.org/war/${JENKINS_VERSION}/jenkins.war -o /usr/share/jenkins/jenkins.war

RUN curl -fL http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | tar xzC /opt \
  && mv /opt/node-v${NODE_VERSION}-linux-x64 /opt/node

RUN curl -fL http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz  | tar xzC /opt

RUN curl -fL http://updates.jenkins-ci.org/latest/gradle.hpi -o $JENKINS_HOME/plugins/gradle.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/nodejs.hpi -o $JENKINS_HOME/plugins/nodejs.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/git.hpi -o $JENKINS_HOME/plugins/git.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/git-client.hpi -o $JENKINS_HOME/plugins/git-client.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/parameterized-trigger.hpi -o $JENKINS_HOME/plugins/parameterized-trigger.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/promoted-builds.hpi -o $JENKINS_HOME/plugins/promoted-builds.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/rebuild.hpi -o $JENKINS_HOME/plugins/rebuild.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/conditional-buildstep.hpi -o $JENKINS_HOME/plugins/conditional-buildstep.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/run-condition.hpi -o $JENKINS_HOME/plugins/run-condition.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/token-macro.hpi -o $JENKINS_HOME/plugins/token-macro.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/scm-api.hpi -o $JENKINS_HOME/plugins/scm-api.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/deploy.hpi -o $JENKINS_HOME/plugins/deploy.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/artifactory.hpi -o $JENKINS_HOME/plugins/artifactory.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/docker-plugin.hpi -o $JENKINS_HOME/plugins/docker-plugin.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/ssh-slaves.hpi -o $JENKINS_HOME/plugins/ssh-slaves.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/ssh-credentials.hpi -o $JENKINS_HOME/plugins/ssh-credentials.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/credentials.hpi -o $JENKINS_HOME/plugins/credentials.hpi
RUN curl -fL http://updates.jenkins-ci.org/latest/durable-task.hpi -o $JENKINS_HOME/plugins/durable-task.hpi

VOLUME $JENKINS_HOME/jobs

# Login as jenkins
ENV HOME $JENKINS_HOME/worker
USER jenkins

ENTRYPOINT ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
EXPOSE 8080
CMD [""]
