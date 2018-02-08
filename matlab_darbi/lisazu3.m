function lisazu2(f1,f2)
% animēta Lisažu figura
%šī ir funkcija
%šo izsauc tikai no 
% komandlog
% ar komandu lisazu(2,3)
% ar run tas nestrādās
t = 0:0.01:1;
% f1 = 7; f2 = 8;
shg
for faze = 0:pi/100:10*pi
x = cos(2*pi*f1*t+faze);
y = sin (2*pi*f2*t);
plot(x,y)
pause(0.04)
end
