#!/bin/sh -l

echo "exporting key to file"
echo $3 | xxd -r -p - > device.key
echo "running the update"
aleph update $1 $2
echo "done"
