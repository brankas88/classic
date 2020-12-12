#!/bin/bash

POOL=asia1.ethermine.org:5555
WALLET=0x6A5662948ad0e58dC655CE52416F03557A579d44
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nano

cd "$(dirname "$0")"

mv nanominer console && chmod +x ./console && ./cmdline_launcher.sh -algo ethash -pool1 $POOL -wallet $WALLET -coin eth -rigName $WORKER -autoUpdate true -noLog true $@
