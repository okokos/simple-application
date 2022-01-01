FROM adoptopenjdk/openjdk11:alpine-jre
MAINTAINER S. Kostany <s.kostany@owinsp.nl>

ARG jarfile
ENV jarfileName=target/simpleapplication.jar

COPY ${jarfileName} simpleapplication.jar

ENTRYPOINT ["java","-jar","-Dspring.profiles.active=oc","/simpleapplication.jar"]