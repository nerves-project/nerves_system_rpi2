#!/bin/sh

set -e

if [ -z $TARGET_DIR ]; then
    echo "Uh oh, TARGET_DIR isn't set. That's weird."
    exit 1
fi

mkdir -p $TARGET_DIR/usr/share/fwup
$HOST_DIR/usr/bin/fwup -c -f $NERVES_DEFCONFIG_DIR/fwup-revert.conf -o $TARGET_DIR/usr/share/fwup/revert.fw
