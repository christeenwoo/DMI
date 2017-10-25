#!/bin/bash
a=$1
#if (()) ... fi
#if (()) ... elif (()) ... elif (()) ... elif(()) ... fi
if (( $a > 0 )); then
   echo "Galvenais zars (ja apakšzars) - tad, kad $a ir >0"
elif (( $a == 0 )); then
   echo "Alternativs zars (tikai jā gadījumā) - tad, kad $a >1"
else
   echo "Galvenais zars (nē apakšzars) - tad, kad $a nav >0"
fi  

