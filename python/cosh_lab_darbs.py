# -*- coding: utf-8 -*-
from decimal import Decimal
from math import cosh
from math import factorial
x = 1.* input("Lietotaaj, luudzu ievadi x argumentu (x): ")
y = cosh(x)

n = input("Lietotaaj, luudzu ievadi x argumentu (n): ")

'''
print "cosh(%6.2f) = %6.2f"%(x,y)
a = 1 * x **2
S = a
print "a = %6.2f S = %6.2f"% (a,S)
def mans_coshinuss(x):
    k = 1
    a = (-1) *x **(k+1) * x **(2*k) /2 *(2*k)
    S = a
'''
k = 1  
S = 0
while k <= n and k<=256:
    a = Decimal((-1)**(k+1) * x **(2*k)) /Decimal(factorial (2 *(2*k)))
    S = S + a
    k = k + 1
print "Beigas"

print "cosh(%6.2f) = %6.5f pie N=%d"%(x,S,n)

'''
yy = mans_coshinuss(x)
print "Izdruka no galv.fmans cosh(%6.2f) = %6.2f"%(x,yy)
'''
