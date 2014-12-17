#!/bin/sh

# A quick script file for downloading an applying multiple patches when manually compiling GNU bash on Linux
# Written (mostly) by Steve Cook with (a little) help from Steve Jenkins
# This really seems like a lame way to have to do this, but it works. :) Use at your own risk.

# You can edit these variables

version="4.0"
nodotversion="40"
lastpatch="44"

# You probably don't want to edit anything below this line

for i in `seq 1 $lastpatch`;
do
    number=$(printf %02d $i)
    file="https://ftp.gnu.org/pub/gnu/bash/bash-${version}-patches/bash${nodotversion}-0$number"
    echo $file
    curl -k $file | patch -N -p0
done
