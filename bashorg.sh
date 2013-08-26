#!/bin/bash
if [ ! -f ~/bashorg/bashorg.dat ]; then
  ~/bashorg/bashorg.pl > ~/bashorg/bashorg && strfile -s ~/bashorg/bashorg ~/bashorg/bashorg.dat
fi
