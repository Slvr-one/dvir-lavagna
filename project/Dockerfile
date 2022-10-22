FROM maven:3.8.5-jdk-8 as first
WORKDIR /dvir-lavagna-jdk

#copining only needed files for target build:
COPY pom.xml .
COPY src ./src/
COPY LICENSE-GPLv3.txt .

RUN mvn verify

#ENTRYPOINT [ "bash", "entrypoint.sh" ]

FROM openjdk:8-jre-alpine

RUN apk add bash 
WORKDIR /dvir-lavagna-jre
COPY --from=first /dvir-lavagna-jdk/target/lavagna-jetty-console.war .

#some env-vars for HSQLDB database:
ENV DB_DIALECT HSQLDB
ENV DB_URL jdbc:hsqldb:file:dvir-jre-lavagna
ENV DB_USER sa
ENV DB_PASS ""
ENV SPRING_PROFILE dev

#RUN apk update && apk add ca-certificates && update-ca-certificates && apk add openssl

EXPOSE 8080
COPY entrypoint.sh .


ENTRYPOINT [ "bash", "entrypoint.sh" ]