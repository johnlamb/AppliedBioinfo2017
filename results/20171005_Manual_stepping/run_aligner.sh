#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "Usage: $0 <fasta file>"
    exit 1
fi
echo "Running jackhmmer for $1 against swissprot..."
id="${1%.fa}"
# echo $id
jackhmmer -A $id.sto ../../data/examples/$1 ~/data/swissprot.fasta > /dev/null
echo "...done"
echo "Converting stockholm format to aln..."
../../bin/convert_sto.py aln $id.sto $id.aln
rm $id.sto
echo "...done"
