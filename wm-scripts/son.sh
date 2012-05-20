#!/bin/sh 

affichage () {
	retour=`amixer get Master | grep dB`
	valeur=`echo $retour | awk '{ print $4 }' | tr -d "[]" `
	mute=`echo $retour | cut -d " " -f 6`

	if [ "$mute" = "[on]" ] ; then
		echo "<span color='lightblue'>$valeur</span>"  
	else
		echo "<span color='red'>$valeur</span>"
	fi
}

case $1 in 
	toggle) 	amixer sset Master toggle 1>&2 /dev/null
				;;
	plus) 	amixer sset Master 2+ 1>&2 /dev/null
				;;
	minus) 	amixer sset Master 2- 1>&2 /dev/null
				;;
esac 
affichage

