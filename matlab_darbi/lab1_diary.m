% doti merījumu dati
% kurus mēs noformēsim kā vektorus
Um = [-1 0.3 1.5 2.5 3.2];
Im = [ 1.1 2.2 2.1 3.2 4.7];
%% Uzzīmēt grafiku
plot (Um, Im, 'o-')
% sanāca lauzta līnija tas mums neder
% tāpēc meģināsim uzminēt
% kāda matematiskā sakarība aprakstā
% apraksta Im atkaribu no Um
%%
% pieņemsim ka sakaribu apraksta
% 2. kartas polinoms
% y = C(1)*x.^2+C(2)*x+C(3)
% Polinoma koeficentus atradīs 
% Matlab funkcija POLYFIT
% sintakse ir šāda :
% C = polyfit(x,y,N)
% kur N - ir polinoma kārta
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

format compact
% lai iegūtu gludu līniju
% noformēsim vēl vienu 'x'
U = -1;0.01;3.2;
% tad rēķināsim 'y'
I = C(1)*U.^2+C(2)*U+C(3);
% zīmēsim grafiku
%merijumu dati bus ar 'o'
% pielaikotais polinoms ar līniju
plot (Um,Im,'o',U,I)
U = -1:0.01:3.2;
I = C(1)*U.^2+C(2)*U+C(3);
plot (Um,Im,'o',U,I)
C = polyfit(Um,Im,3)
C =
    0.1838   -0.4328    0.3391    2.0688
U = -1:0.01:3.2;
I = C(1)*U.^3+C(2)*U+C(3);
plot (Um,Im,'o',U,I)
I = C(1)*U.^2+C(2)*U+C(3);
C = polyfit(Um,Im,3)
C =
    0.1838   -0.4328    0.3391    2.0688
I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
plot (Um,Im,'o',U,I)
% citas kārtas
% izmantosim POLYVAL funkciju
C = polyfit(Um,Im,3);
% I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4)
I = polyval(C,U);
plot(Um,Im,'o'U,I)
 plot(Um,Im,'o'U,I)
               ↑
{Error: Unexpected MATLAB expression.
} 
plot(Um,Im,'o' U,I)
 plot(Um,Im,'o' U,I)
                ↑
{Error: Unexpected MATLAB expression.
} 
plot(Um,Im,'o',U,I)
%% POLYFIT - POLYnominal FITting rēkina koef
%% POLYVAL = POLYnomial VALues rēkina vērtības

% 4. kārta :
C = polyfit(Um,Im,4)
C =
   -0.0557    0.4436   -0.6159    0.0221    2.2373
I = polyval (C,U);
plot (Um,Im, 'o', U,I)
% iznāk polinomiālā interpolācija
% iet precizi caur punktiem
% iepriekšejus gadijumus sauc par 
% polinomiālā aproksim???
C = polyfit(Um,Im,I0)
{Undefined function or variable 'I0'.} 
C = polyfit(Um,Im,10)
[Warning: Polynomial is not unique; degree >= number of data points.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m', 70)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m',70,0)">line 70</a>)] 
C =
  Columns 1 through 7
   -0.0318    0.2240   -0.4986    0.3455         0         0         0
  Columns 8 through 11
         0         0         0    2.2000
I = polyval(C,U);
plot(Um,Im,'o',U,I)
%% ja sakarība ir lineārā
C = polyfit(Um,Im,1);
c
{Undefined function or variable 'c'.} 
CC
{Undefined function or variable 'CC'.} 
c
{Undefined function or variable 'c'.} 
CC
{Undefined function or variable 'CC'.} 
C
C =
    0.7434    1.6936
I = polyval(C,U);
plot(Um,Im,'o',U,I)
%% vairākas mērījumu sērijas
% pieņemsim, ka mēs mainam spriegumu
% bet strāvu mēram 5 reizes
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
         0.9 1.8 2.6 3.3 4.5; 
         1.0 2.0 2.4 3.4 4.3;
         0.8 2.1 2.5 3.5 4.4;
         1.0 2.1 2.3 3.4 4.6];
% kā matlabs zīmē matricas?
figure,plot(Um,Im,'o-')
% lai iznaktu pareizi, vajag transponēt matricu
figure,plot(Um,Im','o-')
% secinajums : matlabs zimē matricas pa stabiņiem
% lai polyfit varētu aprēķināt ir jāpaņem
% vidēja vērtība
Ivid = mean(Im)
Ivid =
    0.9600    2.0400    2.3800    3.3600    4.5000
C = polyfit(Um,Ivid,4);
U = -1:0.01:3.2;
I = polyval(C,U);
% uzzīmēsim ar aplīšiem 
% ar aplīšiem apzīmēt mērījumu datus
% ar zvaigznēm apzīmējiet vidēju 
% ar līniju apzīmejiet pielaikoto polinomu
figure,plot(Um,Im,'*k')
figure,plot(Um,Ivid,'*k')
plot(Um,Ivid,'o')
plot(Um,Ivid,'*k',Um,Im','o',U,I,'-')
%% kā attēlot videjo kvadratisku novirzi
Ivid_kv_novirze = std(Im);
errorbar(Um,Ivid,Ivid_kv_novirze)
%%
%% Datu iegūšana no grafiski uzdotiem datiem
cd

/home/user

ls
Desktop  Documents  Downloads  lab1_diary.m  VirtualBox VMs

ls
Desktop    Downloads   image2.JPG    VirtualBox VMs
Documents  image1.JPG  lab1_diary.m

%% pienemsim ka mums ir grafiks JPG formatā
% 1. ielasam JPG uz matlabu
A = imread(''
 A = imread(''
              ↑
{Error: Expression or statement is incorrect--possibly unbalanced (, {, or
[.
} 
A = imread('image1.JPG');
B = imread('image2.JPG');
% 2. uzzimesim 
figure(1), image(A);
%%
figure(2), image(B);
figure(2), image([0 14],[0 80]B);
 figure(2), image([0 14],[0 80]B);
                               ↑
{Error: Unexpected MATLAB expression.
} 
figure(2), image([0 14],[0 80],B);
% Y ass ir uz otru pusi
figure(2), image([0 14],[80 0],B);
set(gca,'Ydir','normal')
%% Tagad varam nolasit datus
shg
[x,y]=ginput(8)
x =
    0.9907
    1.9790
    2.9673
    4.0830
    4.9757
    6.0596
    6.9841
    8.0042
y =
   70.1180
   70.3580
   70.3580
   70.1180
   70.5980
   70.3580
   70.5980
   70.5980
diary off
