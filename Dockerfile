FROM node:latest
MAINTAINER Will Liu <scliu@scripps.edu>

ENV OWNER none <user@example.com>
ENV NAME VeryRobot
ENV DESC Solo un robot

# need access
RUN useradd hubot -m
# prepare
RUN npm install -g yo generator-hubot coffeescript
USER hubot
WORKDIR /home/hubot
RUN yo hubot --owner="${OWNER}" --name="${NAME}" --description="${DESC}" --defaults --adapter=slack
# remove default heroku related stuff
RUN npm uninstall hubot-keroku-keepalive --save

# overwrite scripts
COPY external-scripts.json external-scripts.json

CMD ./bin/hubot --adapter slack
