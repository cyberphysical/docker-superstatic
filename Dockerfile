FROM node:0.10

RUN npm install -g bower grunt-cli karma superstatic



VOLUME /data
WORKDIR /data

EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/superstatic","-p","8080","-o","0.0.0.0"]