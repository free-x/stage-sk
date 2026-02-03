#!/bin/bash -e

install -m 644 files/skextra.sources "${ROOTFS_DIR}/etc/apt/sources.list.d/"
install -m 644 files/nodesource-repo.gpg "${ROOTFS_DIR}/usr/share/keyrings/"
sed -i "s/ARCH/${ARCH}/g" "${ROOTFS_DIR}/etc/apt/sources.list.d/skextra.sources" 

on_chroot << EOF
apt-get update
EOF
