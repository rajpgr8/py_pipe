FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install sudo -y  && \
    apt-get install python3-pip -y && \
    pip3 install pytest

USER jenkins
