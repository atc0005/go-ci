# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

# Use latest stable version to compile build tools as static binaries for
# inclusion in "final" image stage for use with oldstable build environment.
#
# This allows providing the latest upstream version of bundled build tools
# without having to pin to specific (older) releases of build tools known to
# compile with oldstable Go release series.
#
# For example, nfpm v2.43.3 requires Go 1.25 with the Go 1.24 series still
# being supported by the Go project as the "oldstable" series. If we didn't
# use this approach, then nfpm v2.43.1 would need to be the pinned version for
# the duration of the "oldstable" Go series providing Go 1.24.
FROM i386/golang:alpine3.22 AS builder

# Explicitly disable automatic fetching of Go toolchains newer than the
# version explicitly provided by this container image.
#
# https://github.com/atc0005/go-ci/issues/1188
ENV GOTOOLCHAIN="local"

# https://github.com/tc-hib/go-winres/releases
ENV GO_WINRES_VERSION="v0.3.3"

# https://github.com/goreleaser/nfpm/releases
ENV NFPM_VERSION="v2.43.4"

# https://github.com/choffmeister/git-describe-semver/releases
ENV GIT_DESCRIBE_SEMVER_VERSION="v0.4.0"

RUN echo "Installing go-winres@${GO_WINRES_VERSION}" \
    && go install github.com/tc-hib/go-winres@${GO_WINRES_VERSION} \
    && go version -m $(which go-winres) | awk '$1 == "mod" { print $3 }'

RUN echo "Installing nfpm@${NFPM_VERSION}" \
    && go install github.com/goreleaser/nfpm/v2/cmd/nfpm@${NFPM_VERSION} \
    && nfpm --version

RUN echo "Installing git-describe-semver@${GIT_DESCRIBE_SEMVER_VERSION}" \
    && go install github.com/choffmeister/git-describe-semver@${GIT_DESCRIBE_SEMVER_VERSION} \
    && go version -m $(which git-describe-semver) | awk '$1 == "mod" { print $3 }'


FROM i386/golang:1.24.10-alpine3.22 AS final

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source="https://github.com/atc0005/go-ci"

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.documentation="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.url="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.title="go-ci-oldstable-alpine-buildx86"
LABEL org.opencontainers.image.description="Docker container image used to build dev and stable \
    releases of Go code. Based on the latest version of the current oldstable i386/golang alpine \
    image. Supports cross-platform, static cgo-enabled builds for Windows and Linux."
LABEL org.opencontainers.image.authors="Adam Chalkley (github.com/atc0005)"

# Explicitly disable automatic fetching of Go toolchains newer than the
# version explicitly provided by this container image.
#
# https://github.com/atc0005/go-ci/issues/1188
ENV GOTOOLCHAIN="local"

################################################################################################
# For updating the versions below:
#
# podman container run --platform linux/amd64 --rm -it golang:1.24.4-alpine3.22
# apk add --no-cache make bash util-linux git gcc musl-dev mingw-w64-gcc nano file xz
################################################################################################

# NOTE: This version is often different than the base `gcc` package.
ENV APK_GCC_MINGW64_VERSION="14.2.0-r1"

ENV APK_BASH_VERSION="5.2.37-r0"
ENV APK_GCC_VERSION="14.2.0-r6"
ENV APK_GIT_VERSION="2.49.1-r0"
ENV APK_MAKE_VERSION="4.4.1-r3"
ENV APK_UTIL_LINUX_VERSION="2.41-r9"
ENV APK_FILE_VERSION="5.46-r2"
ENV APK_NANO_VERSION="8.4-r0"
ENV APK_MUSL_DEV_VERSION="1.2.5-r10"
ENV APK_XZ_VERSION="5.8.1-r0"

# https://github.com/tc-hib/go-winres/releases
ENV GO_WINRES_VERSION="v0.3.3"

# https://github.com/goreleaser/nfpm/releases
ENV NFPM_VERSION="v2.43.4"

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
    xz="${APK_XZ_VERSION}"

COPY --from=builder /go/bin/go-winres /usr/bin/go-winres
COPY --from=builder /go/bin/nfpm /usr/bin/nfpm
COPY --from=builder /go/bin/git-describe-semver /usr/bin/git-describe-semver
