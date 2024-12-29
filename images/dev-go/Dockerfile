#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#
# EVERY TIME YOU UPDATE THIS FILE, INCREASE #
#  THE TAG IN update-dev-tag.sh AND RUN IT  #
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#

# dart's protoc plugin does not publish pre-builds,
# so we have to build it ourselves
# This builder will produce the statically linked binary
#  /build/protoc_plugin/bin/protoc_plugin

# based on debian 12 (bookworm-slim)
FROM dart:3.6.0-sdk AS dart-builder

WORKDIR /build

# TODO: renovate
ENV DART_PROTOC_PLUGIN_VERSION=21.1.2
RUN curl -fsSL https://github.com/google/protobuf.dart/archive/refs/tags/protoc_plugin-v${DART_PROTOC_PLUGIN_VERSION}.tar.gz | \
	tar -xz --strip-components=1 \
	&& cd protoc_plugin \
	&& dart pub get \
	&& dart compile exe bin/protoc_plugin.dart \
	&& rm /build/* -rf


# based on the debian 12 ("bookworm") go image
# for now this only builds x86_64 images (TODO)
FROM golang:1.23-bookworm

# appearently this is not set by the go image
ENV GOROOT="/usr/local/go"
ENV PATH="$PATH:$GOROOT/bin"

# update debian package list and packages, also install some
RUN apt update \
    && apt upgrade -y \
    && apt install sudo vim nano jq dnsutils postgresql-client lsb-release gpg redis-tools \
    	apt-transport-https ca-certificates curl gnupg2 software-properties-common \
		-y \
    && apt-get clean autoclean -y && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

# install docker
#  using a mounted docker socket we can manage the host's docker (Docker out of Docker):
#  `/var/run/docker.sock:/var/run/docker.sock`
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
	&& echo "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/debian \
  	$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  	sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
  	&& sudo apt update \
 	&& sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y \
    && apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

# install buf
#  https://buf.build/
# renovate: datasource=github-releases depName=bufbuild/buf
ENV BUF_VERSION=1.48.0
RUN wget https://github.com/bufbuild/buf/releases/download/v${BUF_VERSION}/buf-Linux-x86_64 -O /usr/local/bin/buf \
    && chmod +x /usr/local/bin/buf

# install gh
#  https://cli.github.com/
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
    && chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && apt update \
    && apt install gh -y

# install zed, CLI for SpiceDB
#  https://github.com/authzed/zed
# renovate: datasource=github-releases depName=authzed/zed
ENV ZED_VERSION=0.23.0
RUN wget https://github.com/authzed/zed/releases/download/v${ZED_VERSION}/zed_${ZED_VERSION}_linux_amd64.deb -O zed.deb \
    && apt install -y ./zed.deb \
    && rm zed.deb


# install javascript proto plugin and grpc-web codegen
#  https://github.com/protocolbuffers/protobuf-javascript/
# TODO: renovate
ENV PROTOC_JS_VERSION=3.21.4
RUN wget -qO- https://github.com/protocolbuffers/protobuf-javascript/releases/download/v${PROTOC_JS_VERSION}/protobuf-javascript-${PROTOC_JS_VERSION}-linux-x86_64.tar.gz \
	| tar -xz --strip-components=1 -C /usr/local/bin bin/protoc-gen-js

# TODO: renovate
ENV PROTOC_WEB_VERSION=1.5.0
RUN wget -q https://github.com/grpc/grpc-web/releases/download/${PROTOC_WEB_VERSION}/protoc-gen-grpc-web-${PROTOC_WEB_VERSION}-linux-x86_64 \
	-O /usr/local/bin/protoc-gen-grpc-web \
	&& chmod +x /usr/local/bin/protoc-gen-grpc-web

# install dart protoc plugin
COPY --from=dart-builder /build/protoc_plugin/bin/protoc_plugin.exe /usr/local/bin/protoc-gen-dart


# clean up apt artifacts,
# dont use apt after this line
RUN apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

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
	&& echo 'shopt -s globstar' >> /home/${UNAME}/.bashrc
USER ${UID}:${GID}
ENV HOME="/home/${UNAME}"

# install air
#  https://github.com/air-verse/air
# renovate: datasource=github-releases depName=air-verse/air
ENV AIR_VERSION=1.61.5
RUN curl -sSfL https://raw.githubusercontent.com/air-verse/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v${AIR_VERSION}

# install dapr-cli
#  https://docs.dapr.io/

# renovate: datasource=github-releases depName=dapr/cli
ENV DAPR_CLI_VERSION=1.14.1
# renovate: datasource=github-releases depName=dapr/dapr
ENV DAPR_RT_VERSION=1.14.4

ENV PATH="$PATH:$HOME/dapr"
RUN mkdir "$HOME/dapr" \
    && wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | DAPR_INSTALL_DIR="$HOME/dapr" /bin/bash -s ${DAPR_CLI_VERSION} \
    && dapr init -s --runtime-version ${DAPR_RT_VERSION}

# install fly
#  https://fly.io/docs/
RUN curl -L https://fly.io/install.sh | sh
ENV PATH="$PATH:$HOME/.fly/bin"

# install go-migrate
#  https://github.com/golang-migrate/migrate
# renovate: datasource=github-releases depName=golang-migrate/migrate
ENV MIGRATE_VERSION=4.18.1
RUN go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@v${MIGRATE_VERSION} \
	&& go clean -modcache

# install grpcurl
#  https://github.com/fullstorydev/grpcurl
# renovate: datasource=github-releases depName=fullstorydev/grpcurl
ENV GRPCURL_VERSION=1.9.2
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl@v${GRPCURL_VERSION} \
	&& go clean -modcache

# install sqlc
#  https://sqlc.dev/
# renovate: datasource=github-releases depName=sqlc-dev/sqlc
ENV SQLC_VERSION=1.27.0
RUN go install github.com/sqlc-dev/sqlc/cmd/sqlc@v${SQLC_VERSION}\
	&& go clean -modcache

# install protoc-go-inject-tag
# when updating the version, also update the buf workflow
#  https://github.com/favadi/protoc-go-inject-tag
# renovate: datasource=github-releases depName=favadi/protoc-go-inject-tag
ENV GO_INJECT_TAG_VERSION=1.4.0
RUN go install github.com/favadi/protoc-go-inject-tag@v${GO_INJECT_TAG_VERSION} \
	&& go clean -modcache

# install go proto plugin and grpc codegen
#  https://protobuf.dev/getting-started/gotutorial/
# TODO: renovate
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.34.1
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.4.0
ENV PATH="$PATH:$(go env GOPATH)/bin"

# install gofumpt, a stricter gofmt
#  https://github.com/mvdan/gofumpt
# renovate: datasource=github-releases depName=mvdan/gofumpt
ENV GOFUMPT_VERSION=0.7.0
RUN go install mvdan.cc/gofumpt@v${GOFUMPT_VERSION} \
	&& go clean -modcache

# install golangci-lint, the linter we also use in the CI
#  https://golangci-lint.run/
# renovate: datasource=github-releases depName=golangci/golangci-lint
ENV GOLANGCI_LINT_VERSION=1.63.4
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
	| sh -s -- -b $(go env GOPATH)/bin v${GOLANGCI_LINT_VERSION}

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
