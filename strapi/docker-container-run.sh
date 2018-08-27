#!/bin/sh
docker run -e DATABASE_CLIENT=admin \
	   -e DATABASE_PASSWORD=35VaBRVG36423kYVqFDTnHVX \
	   -e DATABASE_HOST=circusdb.app.polotto.cloud \
	   -e DATABASE_PORT=20736 \
	   -e DATABASE_NAME=admin \
	   -v `pwd`/strapi-app:/usr/src/api/strapi-app \
	   -p 1337:1337 \
	   --name strapi-custom -d strapi-custom
