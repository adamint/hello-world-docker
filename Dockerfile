FROM openjdk:8-jdk
FROM debian:latest

RUN apt-get update
RUN apt-get install git -y
RUN mkdir code
RUN git clone https://github.com/adamint/hello-world-docker code
WORKDIR code/hello-world-docker

FROM gradle:latest

RUN gradle jar

COPY build/libs/*.jar /app/test.jar

CMD ["java", "-jar", "/app/test.jar"]
