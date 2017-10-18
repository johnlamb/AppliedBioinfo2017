#!/bin/bash
# echo "Converting stockholm format to aln..."
mydir=$(mktemp -d "${TMPDIR:-/tmp/}$(basename $0).XXXXXXXXXXXX")
`dirname $0`/convert_sto.py aln $1 $mydir/converted.aln
cat $mydir/converted.aln
rm -rf $mydir
