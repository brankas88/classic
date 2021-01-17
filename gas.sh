#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0xf339db86fafc99f85619a0d55e2d1e47ef9a840a
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-gas

cd "$(dirname "$0")"

chmod +x ./console && ./cmdline_launcher.sh -algo ethash -pool1 $POOL -wallet $WALLET -coin eth -rigName $WORKER -noLog true $@
