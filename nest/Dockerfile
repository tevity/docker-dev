FROM tevity/dev:latest

RUN apt-get update && \
      apt-get install -y apt-transport-https ca-certificates gnupg

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
   && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - \
   && apt-get update && apt-get install -y google-cloud-sdk kubectl google-cloud-sdk-pubsub-emulator

RUN npm i -g @nestjs/cli

ENTRYPOINT sh