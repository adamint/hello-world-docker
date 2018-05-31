FROM openjdk:8-jdk
FROM debian:latest

WORKDIR /app

RUN git clone https://github.com/adamint/hello-world-docker

WORKDIR /app/hello-world-docker

RUN apt-get install gradle -y
