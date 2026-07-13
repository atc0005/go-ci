#!/bin/sh

# podman container run \
#     --platform linux/amd64 \
#     -v $PWD/tools:/tools \
#     --rm \
#     -it \
#     CONTAINER_IMAGE_PLACEHOLDER sh /tools/alpine-images.sh

# EXAMPLE: amd64/golang:alpine3.24@sha256:e4423369553a6e8cf5b8764192ef1f743d85fc7559c9f6f26fcd6c744228fadc


# -------------------------------------------------------------------------
# apk update
# apk info make bash util-linux git gcc musl-dev mingw-w64-gcc nano file xz | grep description | awk '{print $1}'
# apk info PLACEHOLDER | grep description | awk '{print $1}' | grep -Po '?<=PLACEHOLDER-[0-9]+.*'
# -------------------------------------------------------------------------

# Need to fetch the latest package metadata.
apk update

# We rely on GNU grep for Perl regex support.
apk add grep

# NOTE: The grep pattern used here uses a Lookbehind pattern to check if text
# is preceded by the pattern and uses the '-o' flag to only emit the rest of
# the matched text.
APK_GCC_MINGW64_VERSION=$(apk info mingw-w64-gcc | grep description | awk '{print $1}' | grep -Po '(?<=mingw-w64-gcc-)[0-9]+.*')
APK_BASH_VERSION=$(apk info bash | grep description | awk '{print $1}' | grep -Po '(?<=bash-)[0-9]+.*')
APK_FILE_VERSION=$(apk info file | grep description | awk '{print $1}' | grep -Po '(?<=file-)[0-9]+.*')
APK_GCC_VERSION=$(apk info gcc | grep description | awk '{print $1}' | grep -Po '(?<=gcc-)[0-9]+.*')
APK_GIT_VERSION=$(apk info git | grep description | awk '{print $1}' | grep -Po '(?<=git-)[0-9]+.*')
APK_MAKE_VERSION=$(apk info make | grep description | awk '{print $1}' | grep -Po '(?<=make-)[0-9]+.*')
APK_MUSL_DEV_VERSION=$(apk info musl-dev | grep description | awk '{print $1}' | grep -Po '(?<=musl-dev-)[0-9]+.*')
APK_NANO_VERSION=$(apk info nano | grep description | awk '{print $1}' | grep -Po '(?<=nano-)[0-9]+.*')
APK_UTIL_LINUX_VERSION=$(apk info util-linux | grep description | awk '{print $1}' | grep -Po '(?<=util-linux-)[0-9]+.*')
APK_XZ_VERSION=$(apk info xz | grep description | awk '{print $1}' | grep -Po '(?<=xz-)[0-9]+.*')

cat << EOF
# NOTE: This version is often different than the base 'gcc' package.
ENV APK_GCC_MINGW64_VERSION="${APK_GCC_MINGW64_VERSION}")

ENV APK_BASH_VERSION="${APK_BASH_VERSION}"
ENV APK_FILE_VERSION="${APK_FILE_VERSION}"
ENV APK_GCC_VERSION="${APK_GCC_VERSION}"
ENV APK_GIT_VERSION="${APK_GIT_VERSION}"
ENV APK_MAKE_VERSION="${APK_MAKE_VERSION}"
ENV APK_MUSL_DEV_VERSION="${APK_MUSL_DEV_VERSION}"
ENV APK_NANO_VERSION="${APK_NANO_VERSION}"
ENV APK_UTIL_LINUX_VERSION="${APK_UTIL_LINUX_VERSION}"
ENV APK_XZ_VERSION="${APK_XZ_VERSION}"
EOF
