#!/bin/bash

echo "Input a: "
read a
echo "Input b: "
read b
#if  [ $a -gt $b ]
if (( $a == $b )) # ja atbilde uz šo jautājumu ir (1.) ir - jā
then # tad
echo "a ($a) = b ($b)" # tiek izpildīts starp if un elif komandu bloks
elif (( $a > $b )) # jautajums (2.) tiek uzdots tikai ja uz 1. bija nē
then
echo "a ($a) > b ($b)" # šis bloks tiek izpildīts, ja atbilde uz 2. - jā
else
echo "a ($a) < b ($b)" # šis bloks tiek izpildīts, ja atbilde uz 2. - nē
fi
