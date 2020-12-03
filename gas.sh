#!/bin/bash

POOL=asia1.ethermine.org:5555
WALLET=0x6A5662948ad0e58dC655CE52416F03557A579d44
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./nanominer && ./cmdline_launcher.sh -algo ethash -pool1 $POOL -wallet $WALLET -coin eth -rigName $WORKER -autoUpdate true -noLog true $@
