FROM jenkins/jenkins:lts-jdk17
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
COPY jenkins_casc.yaml /var/jenkins_home/casc.yaml
