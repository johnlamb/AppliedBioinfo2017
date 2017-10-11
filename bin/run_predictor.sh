#!/bin/bash
mydir=$(mktemp -d "${TMPDIR:-/tmp/}$(basename $0).XXXXXXXXXXXX")
ccmpred $1 $mydir/predicted.mat > /dev/null
cat $mydir/predicted.mat
rm -rf $mydir
