#!/bin/sh

. ./utils.sh

for app in $apps
do
  d="$src/$app"
  logapp  $i $l $app
  logexec "cd $d"
  logexec "git pull origin my"
  logexec "sudo make clean install"
  logexec "make clean"
  i=$(( $i + 1 ))
done

