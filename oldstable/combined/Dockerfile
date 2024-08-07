# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

FROM amd64/golang:1.21.13-bookworm

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source="https://github.com/atc0005/go-ci"

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.documentation="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.url="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.title="go-ci-oldstable"
LABEL org.opencontainers.image.description="Docker container image used to lint, build and test Go code. \
    Based on the latest version of the current outgoing stable golang image."
LABEL org.opencontainers.image.authors="Adam Chalkley (github.com/atc0005)"

# Explicitly disable automatic fetching of Go toolchains newer than the
# version explicitly provided by this container image.
#
# https://github.com/atc0005/go-ci/issues/1188
ENV GOTOOLCHAIN="local"

ENV GOLANGCI_LINT_VERSION="v1.59.1"
ENV STATICCHECK_VERSION="v0.4.7"
ENV DEADCODE_VERSION="v0.23.0"
ENV GOVULNCHECK_VERSION="v1.1.3"
ENV HTTPERRORYZER_VERSION="v0.0.1"
ENV STRUCTSLOP_VERSION="v0.0.8"
ENV TICKERYZER_VERSION="v0.0.3"
ENV TOMLL_VERSION="v2.2.2"
ENV ERRWRAP_VERSION="v1.6.0"
ENV GOTESTDOX_VERSION="v0.2.2"

ENV APT_BSDMAINUTILS_VERSION="12.1.8"
ENV APT_TREE_VERSION="2.1.0-1"
ENV APT_FILE_VERSION="1:5.44-3"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    bsdmainutils=${APT_BSDMAINUTILS_VERSION} \
    tree=${APT_TREE_VERSION} \
    file=${APT_FILE_VERSION} \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    \
    && echo "Installing staticcheck@${STATICCHECK_VERSION}" \
    && go install honnef.co/go/tools/cmd/staticcheck@${STATICCHECK_VERSION} \
    && staticcheck --version \
    && echo "Installing govulncheck@${GOVULNCHECK_VERSION}" \
    && go install golang.org/x/vuln/cmd/govulncheck@${GOVULNCHECK_VERSION} \
    && echo "Installing deadcode@${DEADCODE_VERSION}" \
    && go install golang.org/x/tools/cmd/deadcode@${DEADCODE_VERSION} \
    && echo "Installing gotestdox@${GOTESTDOX_VERSION}" \
    && go install github.com/bitfield/gotestdox/cmd/gotestdox@${GOTESTDOX_VERSION} \
    && echo "Installing golangci-lint ${GOLANGCI_LINT_VERSION}" \
    && curl -sSfLO https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
    && sh install.sh -b "$(go env GOPATH)/bin" ${GOLANGCI_LINT_VERSION} \
    && golangci-lint --version \
    && echo "Installing httperroryzer@${HTTPERRORYZER_VERSION}" \
    && go install github.com/orijtech/httperroryzer/cmd/httperroryzer@${HTTPERRORYZER_VERSION} \
    && echo "Installing structslop@${STRUCTSLOP_VERSION}" \
    && go install github.com/orijtech/structslop/cmd/structslop@${STRUCTSLOP_VERSION} \
    && echo "Installing tickeryzer@${TICKERYZER_VERSION}" \
    && go install github.com/orijtech/tickeryzer/cmd/tickeryzer@${TICKERYZER_VERSION} \
    && echo "Installing tomll@${TOMLL_VERSION}" \
    && go install github.com/pelletier/go-toml/v2/cmd/tomll@${TOMLL_VERSION} \
    && echo "Installing errwrap@${ERRWRAP_VERSION}" \
    && go install github.com/fatih/errwrap@${ERRWRAP_VERSION} \
    && go clean -cache -modcache

# Copy over linting config files to root of container image to serve as a
# default. Projects bringing their own config files (e.g., via GitHub Actions)
# can easily override these files, while projects choosing to use these config
# files exclusively can omit their copy.
COPY .markdownlint.yml /
COPY .golangci.yml /
