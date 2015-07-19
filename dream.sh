#!/bin/bash

echo "Deepdream"

case $# in
  1) INFILE=$1;;
  *)
    echo "Usage: $0 path/to/image.jpg"
    exit 1
    ;;
esac

OUTFILE="${INFILE%.*}-dream.png"
END_NAME="inception_4c/output"    # default: inception_4c/output
ITERATIONS=10                     # default: 10
OCTAVES=4                         # default: 4
SCALE=1.4                         # default: 1.4

ipython dreamify.py $INFILE $OUTFILE $END_NAME $ITERATIONS $OCTAVES $SCALE