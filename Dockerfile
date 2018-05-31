FROM openjdk:8-jdk
FROM debian:latest

RUN apt-get update
RUN apt-get install git -y
RUN git clone https://github.com/adamint/hello-world-docker
WORKDIR hello-world-docker

FROM gradle:latest
