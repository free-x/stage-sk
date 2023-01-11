#!/bin/bash -e

#install sk
on_chroot << EOF
npm install -g signalk-server
EOF

