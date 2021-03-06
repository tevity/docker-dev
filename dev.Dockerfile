FROM node:latest

ARG USERNAME=node

RUN echo "$USERNAME:$USERNAME" | chpasswd  \
   && mkdir /home/$USERNAME/.npm-global \
   && chown $USERNAME /home/$USERNAME/.npm-global \
   && mkdir /home/$USERNAME/.npm-global/lib \
   && chown $USERNAME /home/$USERNAME/.npm-global/lib

ENV NPM_CONFIG_PREFIX=/home/$USERNAME/.npm-global
ENV PATH=$PATH:/home/$USERNAME/.npm-global/bin

RUN apt-get update && \
      apt-get install -y sudo git
RUN adduser $USERNAME sudo

ENTRYPOINT sh