# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

FROM golang:1.19.6

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source="https://github.com/atc0005/go-ci"

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.documentation="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.url="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.title="go-ci-oldstable"
LABEL org.opencontainers.image.description="Docker container image used to lint, build and test Go code. \
    Based on the latest version of the current outgoing stable golang image."
LABEL org.opencontainers.image.authors="Adam Chalkley (github.com/atc0005)"

ENV GOLANGCI_LINT_VERSION="v1.51.2"
ENV STATICCHECK_VERSION="v0.4.2"
ENV GOVULNCHECK_VERSION="v0.0.0-20230217204342-b91abcc5ae3c"
ENV HTTPERRORYZER_VERSION="v0.0.1"
ENV STRUCTSLOP_VERSION="v0.0.7"
ENV TOMLL_VERSION="v2.0.6"
ENV ERRWRAP_VERSION="v1.5.0"

ENV APT_BSDMAINUTILS_VERSION="12.1.7+nmu3"
ENV APT_TREE_VERSION="1.8.0-1+b1"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    bsdmainutils=${APT_BSDMAINUTILS_VERSION} \
    tree=${APT_TREE_VERSION} \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    \
    && echo "Installing staticcheck@${STATICCHECK_VERSION}" \
    && go install honnef.co/go/tools/cmd/staticcheck@${STATICCHECK_VERSION} \
    && staticcheck --version \
    && echo "Installing govulncheck@${GOVULNCHECK_VERSION}" \
    && go install golang.org/x/vuln/cmd/govulncheck@${GOVULNCHECK_VERSION} \
    && echo "Installing golangci-lint ${GOLANGCI_LINT_VERSION}" \
    && curl -sSfLO https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
    && sh install.sh -b "$(go env GOPATH)/bin" ${GOLANGCI_LINT_VERSION} \
    && golangci-lint --version \
    && echo "Installing httperroryzer@${HTTPERRORYZER_VERSION}" \
    && go install github.com/orijtech/httperroryzer/cmd/httperroryzer@${HTTPERRORYZER_VERSION} \
    && echo "Installing structslop@${STRUCTSLOP_VERSION}" \
    && go install github.com/orijtech/structslop/cmd/structslop@${STRUCTSLOP_VERSION} \
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