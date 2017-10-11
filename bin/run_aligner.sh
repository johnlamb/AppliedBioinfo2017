#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "One argument required"
    echo "Usage: $0 <fasta file>"
    exit 1
fi
# echo "Running jackhmmer for $1 against swissprot..."
id="${1%.fa}"
filename="${id##*/}"
# echo $id
mydir=$(mktemp -d "${TMPDIR:-/tmp/}$(basename $0).XXXXXXXXXXXX")
jackhmmer -A $filename.sto $1 ~/data/swissprot.fasta > /dev/null
# echo "...done"
cat $filename.sto
rm -rf $mydir
