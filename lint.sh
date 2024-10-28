#!/bin/bash
set -e

export GOFLAGS="-buildvcs=false"

find -type d -name gen -prune -o -name "go.mod" -exec sh -c 'cd "$(dirname {})" && pwd && golangci-lint run' \;

