#!/bin/bash
. ~/.bashrc
env SFIA2_DB_URI="${SFIA2_DB_URI}" 
env SECRET_KEY="${SECRET_KEY}"
docker-compose build
docker push MahidharDronavalli/service_1:latest
docker push MahidharDronavalli/service_2:latest
docker push MahidharDronavalli/service_3:latest
docker push MahidharDronavalli/service_4:latest
docker stack deploy -c docker-compose.yaml sfia2