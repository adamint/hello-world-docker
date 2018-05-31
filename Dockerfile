FROM openjdk:8-jdk
FROM gradle:latest
FROM debian:latest

RUN apt update
RUN apt install git -y
RUN mkdir /code
RUN git clone https://github.com/adamint/hello-world-docker /code
WORKDIR /code/hello-world-docker
RUN gradle jar

COPY build/libs/*.jar /app/test.jar

CMD ["java", "-jar", "/app/test.jar"]
