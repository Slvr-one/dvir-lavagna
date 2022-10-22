#!/usr/bin/env bash

java -Xms64m -Xmx128m -Ddatasource.dialect="${DB_DIALECT}" \
    -Ddatasource.url="${DB_URL}" \
    -Ddatasource.username="${DB_USER}" \
    -Ddatasource.password="${DB_PASS}" \
    -Dspring.profiles.active="${SPRING_PROFILE}" \
    -jar lavagna-jetty-console.war --headless


#unzip SNAPSHOT and execute outputed script:
#unzip ./target/lavagna-1.1.3-SNAPSHOT-distribution.zip
#./lavagna-1.1.3-SNAPSHOT/bin/lavagna.sh