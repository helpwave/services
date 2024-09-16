# Have a tool you like? You can install it here!
# Make sure you don't overwrite the ENTRYPOINT or CMD
# Also, don't touch anything above the ####-line

# DON'T CHECK IN YOUR CHANGES!
# run `git update-index --skip-worktree images/dev-go-custom/Dockerfile` first
# (undo: `git update-index --no-skip-worktree images/dev-go-custom/Dockerfile`)

# tag of the base docker image
ARG TAG

# we `COPY --chown` from this, instead of running `chown` below
# using this trick we are faster and save space on your hard drive
FROM ghcr.io/helpwave/dev-go:${TAG} AS base

FROM ghcr.io/helpwave/dev-go:${TAG}

#
# First, make helpwave UID:GID match the host user's UID:GID
#

# user id and primary group id
# $(id -u) and $(id -g) respectively
ARG UID
ARG GID

# Currently, these are the only directories managed by helpwave
COPY --chown=${UID}:${GID} --from=base /go /go
COPY --chown=${UID}:${GID} --from=base /home/helpwave /home/helpwave

USER root
RUN groupmod -g ${GID} -o helpwave \
	&& usermod -u ${UID} -o helpwave

USER helpwave
RUN mkdir -p /go/pkg
RUN mkdir -p /home/helpwave/.cache/go-build

##############################################

# Go wild
