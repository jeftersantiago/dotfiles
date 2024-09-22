#!/bin/sh
printf " 📀 %s%s\n" "$(df -h "/dev/nvme0n1p4" | awk '/[0-9]/ {print $3 "/" $2}')"
