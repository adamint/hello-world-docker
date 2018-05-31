FROM openjdk:8-jdk

VOLUME /data

COPY build/libs/*.jar /app/test.jar

CMD ["java", "-jar", "/app/test.jar"]
