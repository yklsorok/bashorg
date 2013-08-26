#!/bin/bash
if [ -f ~/bashorg/bashorg.dat ];then
    DELTA=$(expr `date +%s` - `stat -c %Y ~/bashorg/bashorg.dat`)
else
    DELTA=0
fi
if [ $DELTA == 0 ] || [ $DELTA \> 43200 ];then
    ~/bashorg/bashorg.pl > ~/bashorg/bashorg && strfile -s ~/bashorg/bashorg ~/bashorg/bashorg.dat
fi
