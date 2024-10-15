#!/bin/bash
set -e

# Format Code
gofumpt -l -w .

# Run linter
find -type d -name gen -prune -o -name "go.mod" -exec sh -c 'cd "$(dirname {})" && pwd && golangci-lint run' \;

