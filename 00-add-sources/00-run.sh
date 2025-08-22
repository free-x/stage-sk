#!/bin/bash -e

install -m 644 files/skextra.sources "${ROOTFS_DIR}/etc/apt/sources.list.d/"
install -m 644 files/nodesource_2024.gpg "${ROOTFS_DIR}/usr/share/keyrings/"

on_chroot << EOF
sed -i "s/ARCH/$(dpkg --print-architecture)/g" /etc/apt/sources.list.d/skextra.sources
apt-get update
EOF
