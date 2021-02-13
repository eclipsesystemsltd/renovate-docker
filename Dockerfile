FROM ubuntu:latest

RUN apt-get update && \
      apt-get -y install sudo && \
      apt-get -y install curl

# RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

RUN apt-get update && \
    apt-get install -y build-essential &&\
    apt-get clean

RUN curl -sL https://deb.nodesource.com/setup_current.x | sudo -E bash && \
    apt-get install -y nodejs

RUN npm install -g npm@7.5.3

RUN npm cache clean --force

RUN npm install -g yarn pnpm && npm install -g renovate

RUN apt-get update && apt-get install git -y

COPY renovate.sh /renovate.sh

# USER docker

WORKDIR /

CMD renovate
