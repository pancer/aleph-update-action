#!/bin/sh -l

echo SECRET_KEY | xxd -r -p - > device.key
aleph update $1 $2
