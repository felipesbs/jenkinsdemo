FROM jenkins/jenkins:2.277.4-lts-centos7

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Pruba problema seedJob
#COPY seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml
COPY seedJob.xml /var/jenkins_home/jobs/seed/config.xml

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

