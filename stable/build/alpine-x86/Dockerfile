# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

FROM i386/golang:1.17.6-alpine3.14

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source=https://github.com/atc0005/go-ci

# NOTE: This version was different than the base `gcc` pkg when last checked
ENV APK_GCC_MINGW64_VERSION="10.3.0-r0"

ENV APK_BASH_VERSION="5.1.4-r0"
ENV APK_GCC_VERSION="10.3.1_git20210424-r2"
ENV APK_GIT_VERSION="2.32.0-r0"
ENV APK_MAKE_VERSION="4.3-r0"
ENV APK_UTIL_LINUX_VERSION="2.37.2-r0"
ENV APK_FILE_VERSION="5.40-r1"
ENV APK_NANO_VERSION="5.7-r2"
ENV APK_MUSL_DEV_VERSION="1.2.2-r3"

# Install specific version of packages
# RUN apk update && \
#     apk add --no-cache \
RUN apk add --no-cache \
    #
    # used for builds
    make=${APK_MAKE_VERSION} \
    #
    # used by some Makefiles
    bash=${APK_BASH_VERSION} \
    #
    # provides `column` binary, which is used by some Makefiles
    util-linux=${APK_UTIL_LINUX_VERSION} \
    #
    # used by go get, other tooling
    git=${APK_GIT_VERSION} \
    #
    # used for static compilation
    gcc=${APK_GCC_VERSION} \
    #
    # used for static compilation
    musl-dev=${APK_MUSL_DEV_VERSION} \
    #
    # used for cross-platform compiling (e.g., Windows and Linux)
    mingw-w64-gcc=${APK_GCC_MINGW64_VERSION} \
    #
    # not strictly required, useful if we need to directly examine files
    nano=${APK_NANO_VERSION} \
    # intended to help quickly determine whether a binary is statically or
    # dynamically linked
    file=${APK_FILE_VERSION}
