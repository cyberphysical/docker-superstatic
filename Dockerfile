FROM node:0.10

RUN npm install -g bower grunt-cli karma superstatic

WORKDIR /app
EXPOSE 8080
CMD ["/usr/local/bin/superstatic","--port","8080","--host","0.0.0.0"]