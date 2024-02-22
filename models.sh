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
# TODO: use parameters to run this script [from our CI](https://github.com/helpwave/services/pull/664/files#diff-5054c9340509a426d62acf155169b7d853bdddb4b2c8ba590b506f3282d6775eR175) as well
pg_dump postgres://postgres:postgres@postgres:5432/$1 --schema-only -O > ./services/$1/schema.sql

# remove build information
sed 's/\(-- Dumped from database version [0-9]\+\.[0-9]\+\).*/\1/' -i ./services/$1/schema.sql
sed 's/\(-- Dumped by pg_dump version [0-9]\+\.[0-9]\+\).*/\1/' -i ./services/$1/schema.sql

cd services/$1 && sqlc generate
