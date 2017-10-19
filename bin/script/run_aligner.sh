#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "One argument required"
    echo "Usage: $0 <fasta file>"
    exit 1
fi

id="${1%.fa}"
filename="${id##*/}"

mydir=$(mktemp -d "${TMPDIR:-/tmp/}$(basename $0).XXXXXXXXXXXX")
# Use the --cpu flag to set number of threads
# For your own aligner, comment out the following line and replace with a call to your preference.
# Make sure to 'cat' the result so this script return it to stdin
# $1 is the input file, $2 is the database file
`dirname $0`/jackhmmer -A $filename.sto $1 $2 > /dev/null
# jackhmmer -A $filename.sto $1 ~/data/swissprot.fasta > /dev/null


cat $filename.sto
rm -rf $mydir $filename.sto
