#!/bin/sh -l

echo "Hello!  Dir: $1"
time=$(date)
echo "::set-output name=time::$time"

LISTING=$(ls -lah $1)
echo $LISTING
echo "::set-output name=listing::$LISTING"
