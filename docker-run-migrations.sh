#!/usr/bin/env sh

migrate -verbose -database $POSTGRES_DSN -path migrations up
