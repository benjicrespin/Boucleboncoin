#!/bin/ksh

function boucle {

int1=$1;
int2=$2;
string1=$3;
string2=$4;
limit=$5;
i=1

##########################################################
#                Affichage des variables
##########################################################

echo $int1
echo $int2
echo $string1
echo $string2
echo $limit

##########################################################
#                       Traitement
##########################################################

while [[ $i -lt $limit ]]
do

# Test pour l'affichage sous condition

	if [[ $(($i % $(($int1*$int2)) )) -eq 0  ]]
	then
		echo $string1$string2

	elif [[ $(($i % $int2)) -eq 0 ]]
	then
		echo $string2

	elif [[ $(($i % $int1)) -eq 0  ]]
	then
		echo $string1

	else
		echo $i
	fi

i=$(($i+1))
done
}

##########################################################
#             Contrôle du nombre d'argument
##########################################################

if [[ $# -ne 5 ]]
then
	echo " Il vous manque un/des argument(s).
 Argument 1 : int1
 Argument 2 : int2
 Argument 3 : string1
 Argument 4 : string2
 Argument 5 : limite "
	exit 1
fi

##########################################################
#                 Appel du Traitement
##########################################################

boucle $1 $2 $3 $4 $5


