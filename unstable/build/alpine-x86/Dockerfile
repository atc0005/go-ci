# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

FROM i386/golang:1.22-alpine3.18

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source="https://github.com/atc0005/go-ci"

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.documentation="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.url="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.title="go-ci-unstable-alpine-buildx86"
LABEL org.opencontainers.image.description="Docker container image used to build test/unstable \
    releases of Go code. Based on the latest version of the current unstable (beta, rc) \
    i386/golang alpine image. Supports cross-platform, static cgo-enabled builds for \
    Windows and Linux."
LABEL org.opencontainers.image.authors="Adam Chalkley (github.com/atc0005)"

# Explicitly disable automatic fetching of Go toolchains newer than the
# version explicitly provided by this container image.
#
# https://github.com/atc0005/go-ci/issues/1188
ENV GOTOOLCHAIN="local"

# NOTE: This version was different than the base `gcc` pkg when last checked
ENV APK_GCC_MINGW64_VERSION="12.2.0-r3"

ENV APK_BASH_VERSION="5.2.15-r5"
ENV APK_GCC_VERSION="12.2.1_git20220924-r10"
ENV APK_GIT_VERSION="2.40.1-r0"
ENV APK_MAKE_VERSION="4.4.1-r1"
ENV APK_UTIL_LINUX_VERSION="2.38.1-r8"
ENV APK_FILE_VERSION="5.45-r0"
ENV APK_NANO_VERSION="7.2-r1"
ENV APK_MUSL_DEV_VERSION="1.2.4-r2"
ENV APK_XZ_VERSION="5.4.3-r0"

# https://github.com/tc-hib/go-winres/releases
ENV GO_WINRES_VERSION="v0.3.1"

# https://github.com/goreleaser/nfpm/releases
ENV NFPM_VERSION="v2.35.3"

# https://github.com/choffmeister/git-describe-semver/releases
ENV GIT_DESCRIBE_SEMVER_VERSION="v0.4.0"

# Install specific version of packages
# RUN apk update && \
#     apk add --no-cache \
RUN apk add --no-cache \
    #
    # used for builds
    make="${APK_MAKE_VERSION}" \
    #
    # used by some Makefiles
    bash="${APK_BASH_VERSION}" \
    #
    # provides `column` binary, which is used by some Makefiles
    util-linux="${APK_UTIL_LINUX_VERSION}" \
    #
    # used by go get, other tooling
    git="${APK_GIT_VERSION}" \
    #
    # used for static compilation
    gcc="${APK_GCC_VERSION}" \
    #
    # used for static compilation
    musl-dev="${APK_MUSL_DEV_VERSION}" \
    #
    # used for cross-platform compiling (e.g., Windows and Linux)
    mingw-w64-gcc="${APK_GCC_MINGW64_VERSION}" \
    #
    # not strictly required, useful if we need to directly examine files
    nano="${APK_NANO_VERSION}" \
    # intended to help quickly determine whether a binary is statically or
    # dynamically linked
    file="${APK_FILE_VERSION}" \
    xz="${APK_XZ_VERSION}" \
    \
    && echo "Installing go-winres@${GO_WINRES_VERSION}" \
    && go install github.com/tc-hib/go-winres@${GO_WINRES_VERSION} \
    && go version -m $(which go-winres) | awk '$1 == "mod" { print $3 }' \
    && echo "Installing nfpm@${NFPM_VERSION}" \
    && go install github.com/goreleaser/nfpm/v2/cmd/nfpm@${NFPM_VERSION} \
    && nfpm --version \
    && go install github.com/choffmeister/git-describe-semver@${GIT_DESCRIBE_SEMVER_VERSION} \
    && go version -m $(which git-describe-semver) | awk '$1 == "mod" { print $3 }' \
    && go clean -cache -modcache
