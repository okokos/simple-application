FROM maven:3.5.2-jdk-8-alpine
MAINTAINER S. Kostany <s.kostany@owinsp.nl>

ARG jarfile
ENV jarfileName=$jarfile

COPY ${jarfileName} toezichtresultaten.jar

ENTRYPOINT ["java","-jar","-Dspring.profiles.active=oc","/simpleapplication.jar"]