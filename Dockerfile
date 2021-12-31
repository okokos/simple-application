FROM registry.access.redhat.com/ubi8/ubi:8.0
MAINTAINER S. Kostany <s.kostany@owinsp.nl>

ARG jarfile
ENV jarfileName=$jarfile

COPY ${jarfileName} toezichtresultaten.jar

ENTRYPOINT ["java","-jar","-Dspring.profiles.active=oc","/simpleapplication.jar"]