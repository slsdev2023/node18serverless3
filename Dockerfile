FROM node:18-buster
LABEL org.opencontainers.image.authors="Serverless Development 2023 <mmoedt+slsDev2023@gmail.com>"

# Group: devs, User: devuser
RUN groupadd --gid 1000 devs && useradd --uid 1000 --gid devs --shell /bin/bash --create-home devuser

RUN \
  apt-get update && \
  apt-get install -y wget gnupg2 && \
  apt-get install -yq python3-pip jq bash gcc build-essential figlet && \
  npm install --global yarn && \
  yarn global add serverless@^3.26 && \
  pip3 install awscli --upgrade && \
  figlet "Done!"

