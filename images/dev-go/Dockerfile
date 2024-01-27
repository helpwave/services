# based on the debian 11 (bullseye) go 1.21 image
# for now this only builds x86_64 images (TODO)
FROM golang:1.21.6-bullseye

# update debian package list and packages, also install some
RUN apt update \
    && apt upgrade \
    && apt install sudo vim nano jq dnsutils postgresql-client lsb-release gpg redis-tools \
    	apt-transport-https ca-certificates curl gnupg2 software-properties-common \
    	-y

# install docker
#  using a mounted docker socket we can manage the host's docker (Docker out of Docker):
#  `/var/run/docker.sock:/var/run/docker.sock`
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    && apt update \
    && apt install docker-ce -y

# install buf
#  https://buf.build/
RUN wget https://github.com/bufbuild/buf/releases/download/v1.28.1/buf-Linux-x86_64 -O /usr/local/bin/buf \
    && chmod +x /usr/local/bin/buf

# install gh
#  https://cli.github.com/
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
    && chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && apt update \
    && apt install gh -y

# create user, reduces friction with mounted file permissions
# 1000:1000 is a good guess (at least on linux)
ARG UID=1000
ARG GID=1000
ARG UNAME=helpwave
RUN groupadd -g ${GID} -o ${UNAME}
RUN useradd -m -u ${UID} -g ${GID} -o -p "" -s /bin/bash ${UNAME} \
    && usermod -aG sudo ${UNAME} \
    && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
    && echo 'Defaults        !env_reset' >> /etc/sudoers \
    && echo 'alias docker="sudo docker"' >> /home/${UNAME}/.bashrc # shitty hack to make docker mgmt easier
USER ${UID}:${GID}
ENV HOME="/home/${UNAME}"

# install air
#  https://github.com/cosmtrek/air
RUN go install github.com/cosmtrek/air@v1.49.0

# install dapr-cli
#  https://docs.dapr.io/
RUN mkdir "$HOME/dapr" \
    && wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | DAPR_INSTALL_DIR="$HOME/dapr" /bin/bash
ENV PATH="$PATH:$HOME/dapr"
RUN dapr init -s

# install fly
#  https://fly.io/docs/
RUN curl -L https://fly.io/install.sh | sh
ENV PATH="$PATH:$HOME/.fly/bin"

# install go-migrate
#  https://github.com/golang-migrate/migrate
RUN go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@v4.17.0

# install grpcurl
#  https://github.com/fullstorydev/grpcurl
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl@v1.8.9

# install sqlc
#  https://sqlc.dev/
RUN go install github.com/sqlc-dev/sqlc/cmd/sqlc@v1.25.0

# install protoc-go-inject-tag
#  https://github.com/favadi/protoc-go-inject-tag
RUN go install github.com/favadi/protoc-go-inject-tag@v1.4.0

# TODO: renovate
# TODO: move apisix dockerfile
# TODO: docs

# TODO: docker permissions
# TODO: git credentials
# TODO: allow customizations

# TODO: mount toolchain
# TODO: build environment variables in dev container
# TODO: scripts
# TODO: update CI
# TODO: evans


CMD ["bash"]
