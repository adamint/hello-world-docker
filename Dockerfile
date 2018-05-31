FROM openjdk:8-jdk
FROM gradle:latest

VOLUME /data

COPY build/libs/*.jar /app/test.jar

CMD ["java", "-jar", "/app/test.jar"]
