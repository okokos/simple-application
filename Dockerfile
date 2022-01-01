#FROM openjdk:8-jdk-alpine
FROM amazoncorretto:11-alpine-jdk
MAINTAINER S. Kostany <s.kostany@owinsp.nl>

ARG jarfile
ENV jarfileName=target/simpleapplication.jar
EXPOSE 8080

COPY ${jarfileName} simpleapplication.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=oc","/simpleapplication.jar"]