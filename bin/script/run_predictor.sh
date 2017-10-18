#!/bin/bash
mydir=$(mktemp -d "${TMPDIR:-/tmp/}$(basename $0).XXXXXXXXXXXX")
# To run your own predictor, comment out the line below and replace with your own predictor.
# Make sure to 'cat' the result so the script returns it to stdin
`dirname $0`/ccmpred $1 $mydir/predicted.mat > /dev/null
#ccmpred $1 $mydir/predicted.mat > /dev/null

cat $mydir/predicted.mat
rm -rf $mydir
