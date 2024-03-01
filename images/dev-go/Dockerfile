#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#
# EVERY TIME YOU UPDATE THIS FILE, INCREASE #
#  THE TAG IN update-dev-tag.sh AND RUN IT  #
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#

# based on the debian 12 ("bookworm") go image
# for now this only builds x86_64 images (TODO)
FROM golang:1.22-bookworm

# appearently this is not set by the go image
ENV GOROOT="/usr/local/go"
ENV PATH="$PATH:$GOROOT/bin"

# update debian package list and packages, also install some
RUN apt update \
    && apt upgrade \
    && apt install sudo vim nano jq dnsutils postgresql-client lsb-release gpg redis-tools \
    	apt-transport-https ca-certificates curl gnupg2 software-properties-common \
		-y \
    && apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

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
ENV BUF_VERSION=1.29.0
RUN wget https://github.com/bufbuild/buf/releases/download/v${BUF_VERSION}/buf-Linux-x86_64 -O /usr/local/bin/buf \
    && chmod +x /usr/local/bin/buf

# install gh
#  https://cli.github.com/
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
    && chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && apt update \
    && apt install gh -y \
    && apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

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
#  https://github.com/cosmtrek/air
# renovate: datasource=github-releases depName=cosmtrek/air
ENV AIR_VERSION=1.51.0
RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v${AIR_VERSION}

# install dapr-cli
#  https://docs.dapr.io/

# renovate: datasource=github-releases depName=dapr/cli
ENV DAPR_CLI_VERSION=1.12.0
# renovate: datasource=github-releases depName=dapr/dapr
ENV DAPR_RT_VERSION=1.12.5

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
ENV MIGRATE_VERSION=4.17.0
RUN go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@v${MIGRATE_VERSION} \
	&& go clean -modcache

# install grpcurl
#  https://github.com/fullstorydev/grpcurl
# renovate: datasource=github-releases depName=fullstorydev/grpcurl
ENV GRPCURL_VERSION=1.8.9
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl@v${GRPCURL_VERSION} \
	&& go clean -modcache

# install sqlc
#  https://sqlc.dev/
# renovate: datasource=github-releases depName=sqlc-dev/sqlc
ENV SQLC_VERSION=1.25.0
RUN go install github.com/sqlc-dev/sqlc/cmd/sqlc@v${SQLC_VERSION}\
	&& go clean -modcache

# install protoc-go-inject-tag
# when updating the version, also update the buf workflow
#  https://github.com/favadi/protoc-go-inject-tag
# renovate: datasource=github-releases depName=favadi/protoc-go-inject-tag
ENV GO_INJECT_TAG_VERSION=1.4.0
RUN go install github.com/favadi/protoc-go-inject-tag@v${GO_INJECT_TAG_VERSION} \
	&& go clean -modcache

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
