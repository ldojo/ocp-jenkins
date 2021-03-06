FROM docker.io/jenkins/jenkins:latest

ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false

COPY users "$JENKINS_HOME"/users/
COPY config.xml "$JENKINS_HOME"/config.xml

COPY plugins/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
