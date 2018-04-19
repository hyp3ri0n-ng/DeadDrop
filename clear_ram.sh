#!/bin/bash
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
    echo "[!] This script must be run as root, and not with sudo. Please su to root and run." 1>&2
    exit 1
fi

echo "[*] Clearing ram..."
sync; echo 3 > /proc/sys/vm/drop_caches
echo "[*] Done."
