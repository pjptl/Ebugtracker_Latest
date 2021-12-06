FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","C:\Users\saich\.jenkins\workspace\EbugTracker\target\ebugtracker-casestudy-0.0.1-SNAPSHOT.jar"]
