# -*- coding : utf-8 -*-
from math import sin


def mans_sinuss(x):
    k = 0
    a = (-1)**0*x**1/(1)
    S = a
    print "izdruka no lietot.f. a0 = %6.2f S0 = %.2f"%(a,S)



   while k < 3:
    k = k + 1
    R = a * (-1) * x**2/((2*k)*(2*k+1))
    a = a * R   
    S = S + a
    print "izdruka no lietot. f. a%d = %6.2f S%d = %.2f"%(k,a,k,S)
    return S   
    print "izdruka no lietot. f. Beigas!"


x = 1.* input("izdruka no galv. f. Lietotaj, ludzu, ievadi argumentu (x): ")
y = sin(x)
print "izdruka no galv. f. standarta sin(%.2f) = %6.2f"%(x,y)
yy = mans_sinuss(x) # funkcijas izpilde un pieskirsana
print "izdruka no galv. f. mans sin (%.2f) = %.2f"%(x,yy)


k = 0
a = (-1)**0*x**1/(1)
S = a
print "a0 = %6.2f S0 = %.2f"%(a,S)
