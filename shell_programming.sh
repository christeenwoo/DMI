#!/bin/bash
NAME="Vaards Uzvaards"
#4.piemers
echo "Tiek pildits skripts: "$0
#echo $0
#echo $n
echo "Skriptam nodoto argumentu skaits: " $#
echo"Skriptam nodoti argumenti (attelosona/grupesana 1)": $*
echo "Skriptam nodoti argumenti (attelosana/grupesana 2)": $@
#echo $?
echo "Skriptam pieskirtais procesa numurs" $$
#echo $!


echo $NAME
unset NAME
echo $NAME
#3.piemers
#NAME= "Vaards Uzvaards"
#echo $NAME
#echo $unset
#echo $NAME

#2.piemers
#readonly NAME
#echo $NAME
#NAME="Uzvaards Vaards"
#echo $NAME

#1. piemers
#echo NAME


