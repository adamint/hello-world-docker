FROM openjdk:8-jdk
FROM debian:latest

WORKDIR /app

RUN apt-get update
RUN apt-get install gradle -y
RUN git clone https://github.com/adamint/hello-world-docker

WORKDIR /app/hello-world-docker

