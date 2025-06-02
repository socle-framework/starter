FROM alpine:latest

RUN mkdir /app

WORKDIR /app

COPY bin/api .
COPY .env .  
COPY *.crt .
COPY *.key .
COPY cert.yaml .

CMD [ "/app/api"]