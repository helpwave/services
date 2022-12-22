VERSION ?= $(shell git log --format="%h" -n 1)
DOCKERFILE_SERVICES = .build/service.Dockerfile

SERVICES = user-svc emergency-room-svc

.PHONY: $(SERVICES)
$(SERVICES):
	docker build -f ${DOCKERFILE_SERVICES} --build-arg=VERSION=development --build-arg=SERVICE=$@ -t helpwave/$@ .

.PHONY: clean
clean:
	docker rmi $$(docker images --format '{{.Repository}}:{{.Tag}}' | grep "^helpwave/")
	yes | docker image prune
