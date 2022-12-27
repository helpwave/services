VERSION ?= $(shell git log --format="%h" -n 1)
DOCKERFILE_SERVICES = Dockerfile.service

SERVICES = user-svc emergency-room-svc

.PHONY: $(SERVICES)
$(SERVICES):
	docker build -f ${DOCKERFILE_SERVICES} --build-arg=VERSION=${VERSION} --build-arg=SERVICE=$@ -t helpwave/$@ .

.PHONY: all
all: $(SERVICES)

.PHONY: clean
clean:
	docker rmi $$(docker images --format '{{.Repository}}:{{.Tag}}' | grep "^helpwave/")
	yes | docker image prune
