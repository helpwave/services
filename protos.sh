#!/bin/bash
set -e

buf lint --path proto
buf generate --path proto --include-imports --include-wkt

protoc-go-inject-tag -input="gen/go/proto/*/*/*/*.pb.go" # Note this only matches exactly three dirs, as go's glob does not support '**' (https://github.com/golang/go/issues/11862)
gofmt -w gen/go
