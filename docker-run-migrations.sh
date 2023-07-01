#!/usr/bin/env sh

migrate -database $POSTGRES_DSN -path migrations up
