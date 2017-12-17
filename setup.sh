#!/bin/bash

if [ ! -f .env ]; then
    cp .env-sample .env
    sed -i -e "s/john:doe\@localhost:27017\/databaseName/mongo\/usermanager/g" .env
    rm .env-e
fi

docker-compose build
docker-compose up
