#!/bin/sh

src="$HOME/source"
apps="dwm st surf dmenu slstatus tabbed"

red=`tput setaf 9`
purple=`tput setaf 13`
reset=`tput sgr0`

logexec () {
  echo "$purple[ --- $1 ]$reset"
  $1
}

logapp () {
  echo "$red[ $1/$2 ----- $3 ----- ]$reset"
}

i=1
l=`echo $apps | wc -w`
for app in $apps
do
  d="$src/$app"
  logapp  $i $l $app
  logexec "cd $d"
  logexec "make clean"
  logexec "git add ."
  logexec "git commit -m 'update'"
  logexec "git push origin my"
  i=$(( $i + 1 ))
done

