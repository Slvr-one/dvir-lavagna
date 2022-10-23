#!/usr/bin/env bash

echo -e "\n -----DOWN----- \n\n"
docker compose down 

echo -e "\n -----UP----- \n\n"
docker compose up -d