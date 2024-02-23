#!/usr/bin/bash

set -e

# See README.md -> Migrations -> Usage

SERVICE=$1

# No service? use them all!
if [[ -z $SERVICE ]]; then
	for file in services/*-svc; do
		echo $(basename "$file")
		bash $0 $(basename "$file") up || echo "skipped"
	done
	exit 0
fi

WORKING_DIRECTORY="services/$SERVICE"

# test if service exists and has migrations
if [ ! -d $WORKING_DIRECTORY/migrations ]; then
    echo "service $1 does not exist or has no migrations" >&2
    exit 1
fi

if [[ $2 = "desired" ]]; then
	ls $WORKING_DIRECTORY/migrations | sort -r | head -n1 | grep -Eo '[1-9][0-9]*' | head -n1
	exit 0
fi

# test if .env exists for service
if [ ! -f $WORKING_DIRECTORY/.env ]; then
    echo "WARNING: .env file for service $1 does not exist" >&2
else
	# load service's .env
	export $(grep -v '^#' $WORKING_DIRECTORY/.env | xargs)
fi

# Default values
POSTGRES_USER="${POSTGRES_USER:-postgres}"
POSTGRES_PASSWORD="${POSTGRES_PASSWORD:-postgres}"
POSTGRES_HOST="${POSTGRES_HOST:-postgres}"
POSTGRES_PORT="${POSTGRES_PORT:-5432}"
POSTGRES_DB="${POSTGRES_DB:-postgres}"

# prepare args for piping to migrate
# by removing the first argument (the service)
shift

POSTGRES_URL="postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST:$POSTGRES_PORT/$POSTGRES_DB?sslmode=disable"

echo "Note: using sslmode=disable, only use this script with local databases!" >&2

migrate -database $POSTGRES_URL -path $WORKING_DIRECTORY/migrations "$@"

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
	echo "Done, waiting 10 seconds to show result"
	echo "You can press CTRL+C"
    sleep 10
fi
