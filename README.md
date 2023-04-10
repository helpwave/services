# services

helpwave's microservices

## Docker images

You can build a docker image for a service using `make`:
```bash
make <servicename>
```
 e.g.:
```bash
 make user-svc
```

Each service should have a Makefile, that includes the root's Makefile.
In the context of a service directory you should be able to use
```bash
 make this
```
to build the corresponding docker image as well.

