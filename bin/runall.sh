#!/bin/bash
basename="${1%.fa}"
basename="${basename##*/}"
mydir=$(mktemp -d "${TMPDIR:-/tmp/}$(basename $0).XXXXXXXXXXXX")
./run_aligner.sh $1 > $mydir/aligned.sto  
./run_converter.sh $mydir/aligned.sto > $mydir/converted.aln
./run_predictor.sh $mydir/converted.aln > $mydir/predicted.mat
cat $mydir/predicted.mat
rm -rf $mydir

#finalOut = "
#./run_predictor.sh $2
