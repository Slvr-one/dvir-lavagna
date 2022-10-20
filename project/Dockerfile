FROM maven:3.8.5-jdk-8 as first
WORKDIR /dvir-lavagna 
COPY ./pom.xml .
COPY ./src ./src/
COPY ./LICENSE-GPLv3.txt .
COPY ./entrypoint.sh .
RUN mvn verify
#ENTRYPOINT [ "sh" ]
ENTRYPOINT [ "bash", "./entrypoint.sh" ]

#FROM openjdk:8-jre-alpine


