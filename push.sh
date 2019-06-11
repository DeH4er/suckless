#!/bin/sh

. ./utils.sh

for app in $apps
do
  d="$src/$app"
  logapp  $i $l $app
  logexec "cd $d"
  logexec "make clean"
  logexec "git add ."
  logexec "git commit -m 'update'"
  logexec "git push origin my"
  logexec "git pull origin my"
  i=$(( $i + 1 ))
done

