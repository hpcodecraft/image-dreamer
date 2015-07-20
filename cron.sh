#!/bin/bash

if [ -e /vagrant/images/dreaming.lock ]; then
  # echo "Lockfile found, exiting"
  exit 1
fi

# echo "Running Deepdream Cronjob as `whoami` at `date`"

# helper function to count images in a folder
count_images() {
  shopt -s nullglob
  numfiles=0

  for ext in jpg png; do
    files=( *."$ext" )
    filecount=${#files[@]}
    numfiles=$((numfiles + filecount))
  done

  echo $numfiles
}

# check if there are new files to be processed
cd /vagrant/images/new
newfiles=$(count_images)

# echo "Found $newfiles files to process"

if (( newfiles > 0 )); then
  # move first file to current folder
  files=(*)
  firstfile=${files[0]}
  mv $firstfile /vagrant/images/current

  # start dreaming
  cd /vagrant
  ./dream.sh images/current/$firstfile
else
  cd /vagrant
fi