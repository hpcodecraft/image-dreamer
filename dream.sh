#!/bin/bash

# Deepdream parameters
END_NAME="inception_4c/output"    # default: inception_4c/output
ITERATIONS=10                     # default: 10
OCTAVES=4                         # default: 4
SCALE=1.4                         # default: 1.4


# Begin of actual script
# Don't change stuff here
cd /vagrant

case $# in
  1) INFILE=$1;;
  *)
    echo "Usage: $0 path/to/image.jpg"
    exit 1
    ;;
esac

OUTFILE="${INFILE%.*}-dream.png"

echo "[`date`] Starting to dream of $INFILE"
touch /vagrant/images/dreaming.lock
ipython dreamify.py $INFILE $OUTFILE $END_NAME $ITERATIONS $OCTAVES $SCALE
mv /vagrant/images/current/* /vagrant/images/finished
rm /vagrant/images/dreaming.lock
echo "[`date`] Sleeping dreamless..."