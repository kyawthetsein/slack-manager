FROM ubuntu:14.04

# Clone the repository by
RUN git clone https://github.com/anonrig/slack-manager

# install from npm
RUN cd ./slack-manager; npm install slack-manager --save

# install dependencies
RUN npm install

# start your bot
RUN npm start
