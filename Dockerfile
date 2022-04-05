FROM docker.io/adoptopenjdk:11-jre-hotspot

USER root

ARG ARG_MESSAGE_WELCOME='Hello, World'
ENV MESSAGE_WELCOME=${ARG_MESSAGE_WELCOME}

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

USER 1001 

ENTRYPOINT ["java", "-jar", "/app.jar"]
