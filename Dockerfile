FROM openjdk:8-jdk
FROM alpine/git

WORKDIR /app

RUN git clone https://github.com/adamint/hello-world-docker

WORKDIR /app/hello-world-docker

FROM gradle:latest
RUN ls
RUN gradle build

COPY /app/hello-world-docker/build/libs/*.jar /app/test.jar

CMD ["java", "-jar", "/app/test.jar"]