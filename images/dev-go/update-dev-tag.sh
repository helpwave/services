#!/bin/bash

# fail early
set -e

# update this value, when you update the Dockerfile
# renovate: dev-tag
TAG='15'

# go to repo root
cd $(git rev-parse --show-toplevel)

sed -i -rz "s@dev-tag(\s+)TAG: \x27?[0-9]+\x27?@dev-tag\1TAG: \x27${TAG}\x27@g" dev/docker-compose.yaml
sed -i -rz "s@dev-tag(\s+)DEV_TAG: \x27?[0-9]+\x27?@dev-tag\1DEV_TAG: \x27${TAG}\x27@g" .github/workflows/cicd.yaml
