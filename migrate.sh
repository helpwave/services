#!/bin/bash

SERVICE=$1
WORKING_DIRECTORY="services/$SERVICE"

# test if service exists hand as migrations
if [ ! -d $WORKING_DIRECTORY/migrations ]; then
    echo "service $1 does not exist"
    exit 1
fi

# test if .env for service exists
if [ ! -f $WORKING_DIRECTORY/.env ]; then
    echo ".env file for service $1 does not exist"
    exit 1
fi

# prepare args for piping to migrate
shift

# load .env
export $(grep -v '^#' $WORKING_DIRECTORY/.env | xargs)

POSTGRES_URL="postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST:$POSTGRES_PORT/$POSTGRES_DB?sslmode=disable"

docker run --rm -v /$(pwd)/$WORKING_DIRECTORY/migrations:/migrations --network host migrate/migrate -database $POSTGRES_URL -path migrations "$@"

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
	echo "Done, waiting 10 seconds to show result"
	echo "You can press CTRL+C"
    sleep 10
fi
