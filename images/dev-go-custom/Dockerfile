# Have a tool you like? You can install it here!
# This file (directory, even!) is in the .gitignore, so your changes are not checked in
# Just make sure you don't overwrite the ENTRYPOINT or CMD
# Also, don't touch anything above the ####-line,
# or you might have to deal with merge conflicts when pulling new version!
# If you really NEED to update this file (i.e. anything above the ###-line),
# you can add this file to git-staging using `git add -f`


# tag of the base docker image
ARG TAG

# we `COPY --chown` from this, instead of running `chown` below
# using this trick we are faster and save space on your hard drive
FROM ghcr.io/helpwave/dev-go:${TAG} as base

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

##############################################

