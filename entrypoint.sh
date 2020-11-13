#!/bin/sh -l

greet() {
  echo "Hello ${WHO_TO_GREET}!"
}

out_time() {
  time=$(date)
  echo "Time is"
  echo "${time}"
  echo "::set-output name=time::$time"
}

out_other() {
  echo "Listing is "
  ls -lah $DIR
  LISTING=$(ls $DIR)
  echo "::set-output name=listing::$LISTING"

  echo "Set random"
  echo "::set-output name=random-id::$RANDOM"
}
