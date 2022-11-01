#!/bin/sh -l

echo "Hello ${1}!"


time=$(date)
echo "Time is"
echo "${time}"
echo "time=$time" >> $GITHUB_OUTPUT

echo "Listing is "
ls -lah $2
LISTING=$(ls $2)
echo "listing::$LISTING" >> $GITHUB_OUTPUT

echo "Set random"
echo "random-id=$RANDOM" >> $GITHUB_OUTPUT
