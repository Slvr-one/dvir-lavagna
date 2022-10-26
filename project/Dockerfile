FROM maven:3.8.5-jdk-8 as first
WORKDIR /dvir-lavagna-jdk

COPY pom.xml .
COPY src ./src/
COPY LICENSE-GPLv3.txt .
RUN mvn verify

FROM openjdk:8-jre-alpine

RUN apk add bash 
WORKDIR /dvir-lavagna-jre
COPY --from=first /dvir-lavagna-jdk/target/lavagna-jetty-console.war .

RUN apk update && apk add ca-certificates && update-ca-certificates && apk add openssl
RUN apk add netcat-openbsd

EXPOSE 8080
COPY entrypoint.sh .


ENTRYPOINT [ "bash", "entrypoint.sh" ]
