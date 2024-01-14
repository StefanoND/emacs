#! /bin/bash

curdir=$PWD
doomdir="$curdir"/.doom.d

if [ -f "$doomdir"/lisp/cl-libify.el ]; then
  echo "Removed"
  rm "$doomdir"/lisp/cl-libify.el
elif ! [ -f "$doomdir"/lisp/cl-libify.el ]; then
  echo "Copied to $doomdir/lisp"
  cp "$curdir"/cl-libify.el "$doomdir"/lisp
fi
