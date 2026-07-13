#!/bin/bash

# podman container run \
#     --platform linux/amd64 \
#     -v $PWD/tools:/tools \
#     --rm \
#     -it \
#     PLACEHOLDER bash /tools/ubuntu-images.sh

# EXAMPLE: amd64/golang:bookworm@sha256:52c17b52eb8f166a0d5bec1a1acae49f373a4f1fc8e09527043bb7eca23c96ef

apt-get update && apt-get install -y --no-install-recommends \
     bsdmainutils \
     file \
     tree \
     gcc-multilib \
     gcc-mingw-w64 \
     xz-utils \
     gcc \
     libgl1-mesa-dev \
     xorg-dev

dpkg -l | grep -E '^ii  (bsdmainutils|tree|gcc-multilib|gcc-mingw-w64|xz-utils|gcc|libgl1-mesa-dev|xorg-dev)(\:amd64)?\s+'

APT_BSDMAINUTILS_VERSION=$(dpkg -s bsdmainutils | grep Version | awk '{print $NF}')
APT_FILE_VERSION=$(dpkg -s file | grep Version | awk '{print $NF}')
APT_TREE_VERSION=$(dpkg -s tree | grep Version | awk '{print $NF}')
APT_GCC_MULTILIB_VERSION=$(dpkg -s gcc-multilib | grep Version | awk '{print $NF}')
APT_GCC_MINGW_W64_VERSION=$(dpkg -s gcc-mingw-w64 | grep Version | awk '{print $NF}')
XZ_UTILS_VERSION=$(dpkg -s  xz-utils | grep Version | awk '{print $NF}')
APT_GCC_VERSION=$(dpkg -s gcc | grep Version | awk '{print $NF}')
APT_LIBGL1_MESA_DEV_VERSION=$(dpkg -s libgl1-mesa-dev | grep Version | awk '{print $NF}')
APT_XORG_DEV_VERSION=$(dpkg -s xorg-dev | grep Version | awk '{print $NF}')

cat << EOF

For the 'mingw' containers:

     ENV APT_BSDMAINUTILS_VERSION="${APT_BSDMAINUTILS_VERSION}"
     ENV APT_TREE_VERSION="${APT_TREE_VERSION}"
     ENV APT_GCC_MULTILIB_VERSION="${APT_GCC_MULTILIB_VERSION}"
     ENV APT_GCC_MINGW_W64_VERSION="${APT_GCC_MINGW_W64_VERSION}"
     ENV XZ_UTILS_VERSION="${XZ_UTILS_VERSION}"

     # https://docs.fyne.io/started/
     ENV APT_GCC_VERSION="${APT_GCC_VERSION}"
     ENV APT_LIBGL1_MESA_DEV_VERSION="${APT_LIBGL1_MESA_DEV_VERSION}"
     ENV APT_XORG_DEV_VERSION="${APT_XORG_DEV_VERSION}"

For the 'combined' containers:

     ENV APT_BSDMAINUTILS_VERSION="${APT_BSDMAINUTILS_VERSION}"
     ENV APT_TREE_VERSION="${APT_TREE_VERSION}"
     ENV APT_FILE_VERSION="${APT_FILE_VERSION}"

For the 'release' build containers:

     ENV APT_BSDMAINUTILS_VERSION="${APT_BSDMAINUTILS_VERSION}"
     ENV APT_TREE_VERSION="${APT_TREE_VERSION}"
     ENV XZ_UTILS_VERSION="${XZ_UTILS_VERSION}"

EOF

