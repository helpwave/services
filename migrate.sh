#!/bin/bash

# See README.md -> Migrations -> Usage

SERVICE=$1
WORKING_DIRECTORY="services/$SERVICE"

# test if service exists and has migrations
if [ ! -d $WORKING_DIRECTORY/migrations ]; then
    echo "service $1 does not exist"
    exit 1
fi

# test if .env exists for service
if [ ! -f $WORKING_DIRECTORY/.env ]; then
    echo ".env file for service $1 does not exist"
    exit 1
fi

# prepare args for piping to migrate
# by removing the first argument (the service)
shift

# load service's .env
export $(grep -v '^#' $WORKING_DIRECTORY/.env | xargs)

POSTGRES_URL="postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST:$POSTGRES_PORT/$POSTGRES_DB?sslmode=disable"

echo "Note: using sslmode=disable, only use this script with local databases!"

docker run --rm -i -v /$(pwd)/$WORKING_DIRECTORY/migrations:/migrations --network host migrate/migrate -database $POSTGRES_URL -path migrations "$@"

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
	echo "Done, waiting 10 seconds to show result"
	echo "You can press CTRL+C"
    sleep 10
fi
