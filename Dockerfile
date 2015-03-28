FROM node:0.10

RUN npm install -g bower grunt-cli karma superstatic


EXPOSE 8080
CMD ["/usr/local/bin/superstatic","-p","8080","-o","0.0.0.0"]