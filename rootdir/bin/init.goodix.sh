#! /vendor/bin/sh

if [ ! -f /data/system/users/0/settings_fingerprint.xml ]; then
    rm -rf /mnt/vendor/persist/data/finger_*
fi
