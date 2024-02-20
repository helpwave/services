#!/bin/bash

set -e

# See README.md
# No service? Build them all!
if [[ -z $1 ]]; then
	for file in services/*-svc; do
	  	echo $(basename "$file")
		bash $0 $(basename "$file") || echo "skipped"
	done
	exit 0
fi

# First, make sure the db is migrated
./migrate.sh $1 up

if [ $? -ne 0 ]; then
	exit 0
fi

# Generate schema.sql
# TODO: use parameters
pg_dump postgres://postgres:postgres@postgres:5432/$1 --schema-only > ./services/$1/schema.sql

cd services/$1 && sqlc generate
