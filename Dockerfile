FROM node:0.10

RUN npm install -g bower grunt-cli karma superstatic

RUN wget -O /usr/share/ep https://github.com/kreuzwerker/envplate/releases/download/v0.0.5/ep-linux && \
    chmod +x /usr/share/ep && \
    ln -s /usr/share/ep /usr/bin/ep
    
WORKDIR /app
EXPOSE 8080

CMD ["ep", "/app/.env.json", "--", "/usr/local/bin/superstatic", "--port","8080","--host","0.0.0.0", "--gzip"]