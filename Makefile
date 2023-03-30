VERSION ?= $(shell git log --format="%h" -n 1)
DOCKERFILE_SERVICES = Dockerfile.service

# Go services are build using the Dockerfile.service dockerfile
GO_SERVICES = $(subst services/,,$(wildcard services/*))

# Docker images have their own Dockerfile in the root of the service directory
DOCKER_IMAGES = $(subst images/,,$(wildcard images/*))

.PHONY: proto
proto:
	buf generate # TODO: replace with docker

.PHONY: GO_SERVICES
$(GO_SERVICES): proto
	docker build -f ${DOCKERFILE_SERVICES} --build-arg=VERSION=${VERSION} --build-arg=SERVICE=$@ -t ghcr.io/helpwave/$@:edge .

.PHONY: DOCKER_SERVICES
$(DOCKER_IMAGES): proto
	cd images/$@ && docker build -t helpwave/$@ .

.PHONY: all
all: GO_SERVICES

.PHONY: clean
clean:
	docker rmi $$(docker images --format '{{.Repository}}:{{.Tag}}' | grep "^helpwave/")
	yes | docker image prune
