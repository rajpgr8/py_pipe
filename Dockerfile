FROM ubuntu:18.04

USER root

RUN apt-get update && apt-get install sudo -y  && \
    apt-get install python3-pip -y && \
    pip3 install pytest
