Python 2.7.6 (default, Jun 22 2015, 17:58:13) 
[GCC 4.8.2] on linux2
Type "copyright", "credits" or "license()" for more information.
>>> # -*- coding: utf-8 -*-
import numpy as np #1
import matplotlib.pyplot as plt #2
def mans_sinuss(x):
k = 0
a = (-1)**0*x**1/(1)
S = a
while k < 500:
k = k + 1
R = (-1) * x**2/((2*k)*(2*k+1))
a = a * R
S = S + a
return S

a = 1.57 #3
b = 3.10 #4
# funkcijas zīmēšana
x = np.arange(a,b,0.01) #5
y = mans_sinuss(x) #6a
plt.grid() #7
plt.plot(x,y) #8
plt.show() #9

# funkcijas sāknes meklēšana
delta_x = 0.001
funa = mans_sinuss(a)
funb = mans_sinuss(b)
if funa * funb > 0:
print "Intervālā [%.2f,%.2f] funkcijai nav saknes"%(a,b)
print "Vai funkcijai šajā intervālā ir pāru sakņu skaits"
exit()

print "Uz robežām f(%.f2)=%.2f f(%.2f)=%.2f"%(a,funa,b,funb)
k = 0
while b-a > delta_x:
x = (a + b)/2
funx = mans_sinuss(x)
print "f(%.4f)=%.4f f(%.4f)=%.4f f(%.4f)=%.4f"%(a,funa,x,funx,b,funb)
if funa * funx > 0:
a = x
else:
b = x
k = k + 1
print "f(%.4f)=%.4f f(%.4f)=%.4f f(%.4f)=%.4f"%(a,funa,x,funx,b,funb)
print "Iterāciju skaits: "%(k)
