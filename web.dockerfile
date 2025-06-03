FROM alpine:latest

RUN mkdir /app

WORKDIR /app

COPY bin/web .
COPY .env .  
COPY *.crt .
COPY *.key .
COPY cert.yaml . 

CMD [ "/app/web"]