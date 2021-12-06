
FROM openjdk:8-jdk-alpine
COPY target/ebugtracker-casestudy-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE 9090
