FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","C:/ProgramData/Jenkins/.jenkins/workspace/Ebug/target/ebugtracker-casestudy.jar"]
