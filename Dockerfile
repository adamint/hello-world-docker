FROM openjdk:8-jdk
FROM alpine/git

WORKDIR /app

RUN git clone https://github.com/adamint/hello-world-docker

WORKDIR /app

COPY --from=0 /app/hello-world-docker /app
FROM gradle:latest
RUN gradle jar

COPY build/libs/*.jar /app/test.jar

CMD ["java", "-jar", "/app/test.jar"]