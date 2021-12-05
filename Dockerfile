FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","C:\WINDOWS\system32\config\systemprofile\.m2\repository\com\capgemini\ebugtracker-casestudy\0.0.1-SNAPSHOT\ebugtracker-casestudy-0.0.1-SNAPSHOT.jar"]
