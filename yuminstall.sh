#!/bin/bash
# a simple script that shows notifications after installing  packages
tip="$(basename "$0") [-h] [-y]

-h show this help
-y automatically agree with install (equivalent of yum install -y)"
#package=$1
if [[ $1 == "-h" ]]; then 
	echo "$tip"
	exit
elif [[ ! ${2} == "" && $1 == "-y" ]]; then
	package=${2}
	sudo yum install -y "$package" &&  notify-send "Installed" "${package} has been installed" --icon=dialog-information
	exit
else 	echo $tip && exit
fi


if [[ $2 == "-y" ]]; then
	package=${1}
	sudo yum install -y "$package" &&  notify-send "Installed" "${package} has been installed" --icon=dialog-information
	exit
elif [[ $2 == "" ]]; then
	package=${1}
	sudo yum install "$package" &&  notify-send "Installed" "${package} has been installed" --icon=dialog-information
	exit
fi
