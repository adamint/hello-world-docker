FROM openjdk:8-jdk

EXPOSE 4567

VOLUME /data

COPY build/libs/*.jar /app/test.jar

CMD ["java", "-jar", "/app/test.jar"]
