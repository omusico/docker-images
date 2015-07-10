#Dockerfile to generate jenkins build environment on top of CentOS 7
FROM pcompton/centos-jdk:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.10
ENV GRADLE_HOME /opt/app/gradle
ENV GRADLE_VERSION 2.5
ENV JENKINS_VERSION 1.619
ENV JENKINS_HOME /var/jenkins_home
ENV NODE_VERSION 0.12.7
ENV NODE_HOME /opt/app/node
ENV JAVA_HOME /usr/java/jdk1.8.0_45
ENV JDK_HOME /usr/java/jdk1.8.0_45

RUN mkdir -p $JENKINS_HOME/plugins
RUN mkdir -p $JENKINS_HOME/plugins
RUN useradd -d "$JENKINS_HOME/worker" -u 1000 -m -s /bin/bash jenkins
RUN mkdir -p $JENKINS_HOME/jobs

ADD config.xml $JENKINS_HOME/config.xml
ADD hudson.plugins.gradle.Gradle.xml $JENKINS_HOME/hudson.plugins.gradle.Gradle.xml
ADD nodejs.xml $JENKINS_HOME/nodejs.xml

RUN chown -R jenkins "$JENKINS_HOME"

RUN yum update -y && yum install -y zip unzip subversion.x86_64 git
RUN curl -fL https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o /gradle-${GRADLE_VERSION}-bin.zip \
    && unzip /gradle-${GRADLE_VERSION}-bin.zip \
    && rm /gradle-${GRADLE_VERSION}-bin.zip \
    && mkdir -p /opt/app/gradle \
    && cp -r gradle*/* /opt/app/gradle/ \
    && rm gradle* -rf
RUN mkdir -p /usr/share/jenkins/ \
  && curl -fL http://mirrors.jenkins-ci.org/war/${JENKINS_VERSION}/jenkins.war -o /usr/share/jenkins/jenkins.war

RUN curl -fL http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz -o /node-v${NODE_VERSION}-linux-x64.tar.gz \
  && mkdir -p /opt/app/node \
	&& tar xzf node*.tar.gz \
	&& cp -r node*/* /opt/app/node/ \
	&& rm node* -rf

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

VOLUME $JENKINS_HOME/jobs

# Login as jenkins
ENV HOME $JENKINS_HOME/worker
USER jenkins

ENTRYPOINT ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
EXPOSE 8080
CMD [""]
