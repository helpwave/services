# based on the debian 11 (bullseye) go 1.21 image
# for now this only builds x86_64 images (TODO)
FROM golang:1.21.6-bullseye

# update debian package list and packages
RUN apt update && apt upgrade

# install air
#  https://github.com/cosmtrek/air
RUN go install github.com/cosmtrek/air@v1.49.0

# install buf
#  https://buf.build/
RUN wget https://github.com/bufbuild/buf/releases/download/v1.28.1/buf-Linux-x86_64 -O /usr/local/bin/buf \
    && chmod +x /usr/local/bin/buf

# install dapr-cli
#  https://docs.dapr.io/
RUN wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash

# install fly
#  https://fly.io/docs/
RUN curl -L https://fly.io/install.sh | sh
ENV PATH="$PATH:~/.fly/bin"

# install gh
#  https://cli.github.com/
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
    && chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && apt update \
    && apt install gh -y

# install go-migrate
#  https://github.com/golang-migrate/migrate
RUN go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@v4.17.0

# install grpcurl
#  https://github.com/fullstorydev/grpcurl
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl@v1.8.9

# install jq
RUN apt install jq -y

# install sqlc
#  https://sqlc.dev/
RUN go install github.com/sqlc-dev/sqlc/cmd/sqlc@v1.25.0

# install protoc-go-inject-tag
#  https://github.com/favadi/protoc-go-inject-tag
RUN go install github.com/favadi/protoc-go-inject-tag@v1.4.0

# good guess (at least on linux)
ARG UID=1000
ARG GID=1000
ARG UNAME=helpwave
RUN groupadd -g ${GID} -o ${UNAME}
RUN useradd -m -u ${UID} -g ${GID} -o -s /bin/bash ${UNAME}
USER ${UID}:${GID}

# TODO: renovate

CMD ["bash"]
