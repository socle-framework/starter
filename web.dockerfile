FROM alpine:latest

RUN mkdir /app

WORKDIR /app

COPY bin/web . 
COPY migrations ./migrations
COPY views ./views

CMD [ "/app/web"]