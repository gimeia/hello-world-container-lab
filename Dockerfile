
FROM registry.access.redhat.com/ubi8/openjdk-11:latest as builder

USER 0

WORKDIR /tmp/app

COPY src/ src/
COPY pom.xml pom.xml

RUN mvn install -DskipTests=true


FROM docker.io/adoptopenjdk/openjdk11:x86_64-ubi-minimal-jre-11.0.14.1_1

ARG ARG_MESSAGE_WELCOME='Hello, World'
ENV MESSAGE_WELCOME=${ARG_MESSAGE_WELCOME}

ARG JAR_FILE=/tmp/app/target/*.jar
COPY --from=builder ${JAR_FILE} app.jar

USER 1001 

ENTRYPOINT ["java", "-jar", "/app.jar"]
