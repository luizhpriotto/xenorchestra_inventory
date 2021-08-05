#!/bin/bash
xo-cli --register $1 $2 $3 > /dev/null
xo-cli --list-objects type=VM > invent.json
python3 -W ignore invent.py
cat invent_result.txt
xo-cli --unregister
