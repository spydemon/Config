affichage () { 
	enCours=`setxkbmap -print | grep bepo`
	if test -z "$enCours" ; then 
		echo "A" 
	else 
		echo "B"
	fi 
}

if [ "$1" = "modif" ] ; then 
	changement=`setxkbmap -print | grep bepo`
	if test -z "$changement" ; then 
		setxkbmap fr bepo
		affichage
	else 
		setxkbmap fr
		affichage
	fi
else
	affichage
fi
