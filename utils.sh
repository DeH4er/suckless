#!/bin/sh
src="$HOME/source"
apps="dwm st surf dmenu slstatus tabbed"

appcolor=`tput setaf 9`
cmdcolor=`tput setaf 13`
reset=`tput sgr0`

logapp () {
  echo "$appcolor[ $1/$2 ----- $3 ----- ]$reset"
}

logexec () {
  echo "$cmdcolor[ --- $1 ]$reset"
  $1
}

i=1
l=`echo $apps | wc -w`
