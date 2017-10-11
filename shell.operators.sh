#!/bin/sh

# 4. piem. operācijas ar argumentiem
if [ $# = 2]
# ja (if) skriptam nodoto argumentu skaits $# ir vienāds ar 2
then
# tad (then) izpildām sekojošas darbības 
a=$1
b=$2
val41=`expr $a + $b`
echo "$1 + $2 = "$val41
val42=`expr $a - $b`
echo "$1 - $2 = "$val42
val43=`expr $a \* $b`
echo "$1 * $2 = "$val43
val44=`expr $a / $b`
echo "$1 / $2 ="$val44
val45=`expr $a % $b`
echo "$1 % $2 ="$val45
fi
# līdz šai vietai

# 3. piem - operācijas ar mainīgājiem 
a=29
b=15
val31=`expr $a + $b`
echo "$a + $b = "$val31
val32=`expr $a - $b`
echo "$a - $b = "$val32
val33=`expr $a \* $b`
echo "$a * $b "$val33
val34=`expr $a / $b`
echo "$a / $b ="$val34
val35=`expr $a % $b`
echo "$a % $b ="$val35


# 2. piem. operācijas ar konstantēm
: <<`END`
a=10
b=20

val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"
END
if [ $a == $b ]
then
   echo "a is equal to b"
fi

if [ $a != $b ]
then
   echo "a is not equal to b"
fi
