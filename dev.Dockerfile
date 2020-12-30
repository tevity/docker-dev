FROM node:latest

RUN apt-get update && \
      apt-get install -y software-properties-common && \
      curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - && \
      add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
      apt-get install -y sudo git && \
      apt-get install -y docker-ce-cli

RUN echo "node:node" | chpasswd && adduser node sudo && \
   mkdir /home/node/.npm-global && chown node /home/node/.npm-global && \
   mkdir /home/node/.npm-global/lib && chown node /home/node/.npm-global/lib

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

ENTRYPOINT sh