# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

FROM amd64/golang:1.22.2-bookworm as builder

# Explicitly disable automatic fetching of Go toolchains newer than the
# version explicitly provided by this container image.
#
# https://github.com/atc0005/go-ci/issues/1188
ENV GOTOOLCHAIN="local"

# A current dev branch build (mirrored to fork) is used for pre-release Go
# versions, otherwise the latest upstream build of the tool is installed in
# this image.
ENV GOLANGCI_LINT_VERSION="v1.58.0"

# A current master branch build is used for pre-release Go versions, otherwise
# the latest upstream build of the tool is installed in this image.
ENV STATICCHECK_VERSION="v0.4.7"

ENV DEADCODE_VERSION="v0.19.0"
ENV GOVULNCHECK_VERSION="v1.1.0"
# ENV HTTPERRORYZER_VERSION="v0.0.1"
# ENV STRUCTSLOP_VERSION="v0.0.8"
# ENV TICKERYZER_VERSION="v0.0.3"
ENV TOMLL_VERSION="v2.2.2"
ENV ERRWRAP_VERSION="v1.6.0"
ENV GOTESTDOX_VERSION="v0.2.2"

# These commits/versions are provided by temporary forks of the upstream
# projects. The plan is to switch back to current upstream vesions once
# the required dependencies are updated for those upstream projects.
ENV HTTPERRORYZER_VERSION="54c26d99b9758117957285a790c2d88b51a552dd"
ENV STRUCTSLOP_VERSION="55db8be618045ec870098a4579bae376bbb7df33"
ENV TICKERYZER_VERSION="66a42ca5c152aced76c5186e92a4ae653440f02d"
# ENV ERRWRAP_VERSION="c75521dd38c3bf43d1acaf3f628d87252fa69270"

RUN echo "Installing staticcheck@${STATICCHECK_VERSION}" \
    && go install honnef.co/go/tools/cmd/staticcheck@${STATICCHECK_VERSION} \
    && staticcheck --version

# RUN echo "Installing govulncheck@${GOVULNCHECK_VERSION}" \
#     && go install golang.org/x/vuln/cmd/govulncheck@${GOVULNCHECK_VERSION} \
#     && echo "Installing httperroryzer@${HTTPERRORYZER_VERSION}" \
#     && go install github.com/orijtech/httperroryzer/cmd/httperroryzer@${HTTPERRORYZER_VERSION} \
#     && echo "Installing structslop@${STRUCTSLOP_VERSION}" \
#     && go install github.com/orijtech/structslop/cmd/structslop@${STRUCTSLOP_VERSION} \
#     && echo "Installing tickeryzer@${TICKERYZER_VERSION}" \
#     && go install github.com/orijtech/tickeryzer/cmd/tickeryzer@${TICKERYZER_VERSION} \
#     && echo "Installing tomll@${TOMLL_VERSION}" \
#     && go install github.com/pelletier/go-toml/v2/cmd/tomll@${TOMLL_VERSION} \
#     && echo "Installing errwrap@${ERRWRAP_VERSION}" \
#     && go install github.com/fatih/errwrap@${ERRWRAP_VERSION}

RUN echo "Installing govulncheck@${GOVULNCHECK_VERSION}" \
    && go install golang.org/x/vuln/cmd/govulncheck@${GOVULNCHECK_VERSION} \
    && echo "Installing tomll@${TOMLL_VERSION}" \
    && go install github.com/pelletier/go-toml/v2/cmd/tomll@${TOMLL_VERSION} \
    && echo "Installing deadcode@${DEADCODE_VERSION}" \
    && go install golang.org/x/tools/cmd/deadcode@${DEADCODE_VERSION} \
    && echo "Installing gotestdox@${GOTESTDOX_VERSION}" \
    && go install github.com/bitfield/gotestdox/cmd/gotestdox@${GOTESTDOX_VERSION}

RUN echo "Installing httperroryzer from temporary fork" \
    && git clone https://github.com/atc0005/httperroryzer \
    && cd httperroryzer \
    && git checkout ${HTTPERRORYZER_VERSION} \
    && go install ./cmd/httperroryzer \
    && cd ..

RUN echo "Installing structslop from temporary fork" \
    && git clone https://github.com/atc0005/structslop \
    && cd structslop \
    && git checkout ${STRUCTSLOP_VERSION} \
    && go install ./cmd/structslop \
    && cd ..

RUN echo "Installing tickeryzer from temporary fork" \
    && git clone https://github.com/atc0005/tickeryzer \
    && cd tickeryzer \
    && git checkout ${TICKERYZER_VERSION} \
    && go install ./cmd/tickeryzer \
    && cd ..

RUN echo "Installing errwrap@${ERRWRAP_VERSION}" \
    && go install github.com/fatih/errwrap@${ERRWRAP_VERSION}

# RUN echo "Installing errwrap from temporary fork" \
#     && git clone https://github.com/atc0005/errwrap \
#     && cd errwrap \
#     && git checkout ${ERRWRAP_VERSION} \
#     && go install . \
#     && cd ..

# RUN echo "Installing golangci-lint from dev feat/go1.20 branch" \
#     && git clone https://github.com/atc0005/golangci-lint \
#     && cd golangci-lint \
#     && git checkout ${GOLANGCI_LINT_VERSION} \
#     && go install ./cmd/golangci-lint \
#     && golangci-lint --version

RUN echo "Installing golangci-lint@${GOLANGCI_LINT_VERSION}" \
    && echo "Installing golangci-lint ${GOLANGCI_LINT_VERSION}" \
    && curl -sSfLO https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
    && sh install.sh -b "$(go env GOPATH)/bin" ${GOLANGCI_LINT_VERSION} \
    && golangci-lint --version


FROM amd64/golang:1.22.2-bookworm as final

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source="https://github.com/atc0005/go-ci"

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.documentation="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.url="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.title="go-ci-unstable"
LABEL org.opencontainers.image.description="Docker container image used to lint, build and test Go code. \
    Based on the latest available non-stable golang:beta image, \
    golang:rc image or if not recently available, the latest stable golang image."
LABEL org.opencontainers.image.authors="Adam Chalkley (github.com/atc0005)"

# Explicitly disable automatic fetching of Go toolchains newer than the
# version explicitly provided by this container image.
#
# https://github.com/atc0005/go-ci/issues/1188
ENV GOTOOLCHAIN="local"

# A current dev branch build (mirrored to fork) is used for pre-release Go
# versions, otherwise the latest upstream build of the tool is installed in
# this image.
ENV GOLANGCI_LINT_VERSION="v1.58.0"

# A current master branch build is used for pre-release Go versions, otherwise
# the latest upstream build of the tool is installed in this image.
ENV STATICCHECK_VERSION="v0.4.7"

ENV DEADCODE_VERSION="v0.19.0"
ENV GOVULNCHECK_VERSION="v1.1.0"
ENV HTTPERRORYZER_VERSION="v0.0.1"
ENV STRUCTSLOP_VERSION="v0.0.8"
ENV TOMLL_VERSION="v2.2.2"
ENV ERRWRAP_VERSION="v1.6.0"
ENV GOTESTDOX_VERSION="v0.2.2"

ENV APT_BSDMAINUTILS_VERSION="12.1.8"
ENV APT_TREE_VERSION="2.1.0-1"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    bsdmainutils=${APT_BSDMAINUTILS_VERSION} \
    tree=${APT_TREE_VERSION} \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY --from=builder /go/bin/staticcheck /usr/bin/staticcheck
COPY --from=builder /go/bin/golangci-lint /usr/bin/golangci-lint
COPY --from=builder /go/bin/govulncheck /usr/bin/govulncheck
COPY --from=builder /go/bin/deadcode /usr/bin/deadcode
COPY --from=builder /go/bin/gotestdox /usr/bin/gotestdox
COPY --from=builder /go/bin/httperroryzer /usr/bin/httperroryzer
COPY --from=builder /go/bin/structslop /usr/bin/structslop
COPY --from=builder /go/bin/tickeryzer /usr/bin/tickeryzer
COPY --from=builder /go/bin/tomll /usr/bin/tomll
COPY --from=builder /go/bin/errwrap /usr/bin/errwrap

# Copy over linting config files to root of container image to serve as a
# default. Projects bringing their own config files (e.g., via GitHub Actions)
# can easily override these files, while projects choosing to use these config
# files exclusively can omit their copy.
#
# The Markdown linting config file is copied from the root of this repo
# alongside this Dockerfile via Makefile `build` recipe. This allows for
# maintaining a single copy of the file in this repo vs each Dockerfile build
# "context" having their own separate copy.
#
# The golangci-clint config file referenced below however IS a unique copy of
# the file specific to this image. Additional linters for testing (prior to
# enabling for all container image variants) are enabled in this config file.
# Changes to this file are synced to the main config file periodically once a
# linter/analyzer has proven stable enough for general use. See also GH-63.
COPY .markdownlint.yml /
COPY .golangci.yml /
