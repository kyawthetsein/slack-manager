FROM ubuntu:14.04

#install git
RUN apt-get install -y git

# Clone the repository by
RUN git clone https://github.com/anonrig/slack-manager

#install npm
RUN apt-get -y update && apt-get install -y nodejs-legacy

# install from npm
RUN npm install slack-manager --save

# install dependencies
RUN npm install

# start your bot
RUN npm start
