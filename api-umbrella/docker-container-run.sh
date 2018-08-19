#!/bin/sh
mkdir config && touch config/api-umbrella.yml
mkdir log
mkdir db
docker run -d --name=api-umbrella \
           -p 80:80 -p 443:443 \
           -v "$(pwd)/config":/etc/api-umbrella \
           -v "$(pwd)/db":/opt/api-umbrella/var/db \
           -v "$(pwd)/log":/opt/api-umbrella/var/log \
           nrel/api-umbrella
