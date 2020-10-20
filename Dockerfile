FROM qnap:5000/jjvdgeer/jenkins-ssh-agent:latest

ARG dockergrp=root

RUN apt-get update \
 && apt-get install -qy --no-install-recommends docker.io git

RUN usermod -a -G ${dockergrp} jenkins

