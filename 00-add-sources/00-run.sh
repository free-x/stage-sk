#!/bin/bash -e

#if [ ${RELEASE} == "buster" ]
#then
#  install -m 644 files/skextra.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
#  on_chroot apt-key add - < files/nodesource.gpg.key
#else
#  install -m 644 files/skextra-bullseye.list "${ROOTFS_DIR}/etc/apt/sources.list.d/skextra.list"
#  install -m 644 files/nodesource.gpg "${ROOTFS_DIR}/usr/share/keyrings/"
#fi

#sed -i "s/RELEASE/${RELEASE}/g" "${ROOTFS_DIR}/etc/apt/sources.list.d/skextra.list"

install -m 644 files/skextranew.list "${ROOTFS_DIR}/etc/apt/sources.list.d/skextra.list"
install -m 644 files/nodesource_2024.gpg "${ROOTFS_DIR}/etc/apt/trusted.gpg.d/"

on_chroot << EOF
apt-get update
EOF
