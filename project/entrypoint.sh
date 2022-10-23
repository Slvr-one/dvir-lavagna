#!/usr/bin/env bash


#aditional health check for mysql i found in gh ->
up=false

while [ ! $up ]; do; nc -z -v db:3306; #Scan the open ports of a specified host
  if [ $? -eq 0 ]; then; up=true
  else; echo -e "\n -mysql not up yet- \n\n"
     sleep 5; fi; done;

java -Xms64m -Xmx128m -Ddatasource.dialect="${DB_DIALECT}" \
    -Ddatasource.url="${DB_URL}" \
    -Ddatasource.username="${DB_USER}" \
    -Ddatasource.password="${DB_PASS}" \
    -Dspring.profiles.active="${SPRING_PROFILE}" \
    -jar lavagna-jetty-console.war


#unzip SNAPSHOT and execute outputed script:
#unzip ./target/lavagna-1.1.3-SNAPSHOT-distribution.zip
#./lavagna-1.1.3-SNAPSHOT/bin/lavagna.sh