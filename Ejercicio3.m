clear all 
clc
%mi rut es: 19.330.298-k
a=1; b=9; c=3; d=3; e=0; f=2; g=9; h=8; i=0;
B=((a+b)*c);
r=((i+e)*h)/((b+c+e)*10);
R=((i+e)*(a+c))/(b+c+e+g+h);
%funcion exponencial decreciente
n=0:1:10; x=0.01*B.^n; 
subplot 331; stem(n,x);
xlabel('n'); title('S. Exponencial decreciente'); grid;
%funcion exponencial creciente
m=0:1:10; y=B*1.^m; 
subplot 332; stem(m,x); 
xlabel('m'); title('S. Exponencial creciente'); grid;
%funcion exponencial compleja
w=(-20:1:20); q=-((b+c+1)/60)+(((a*h*d)+1)/60)*j; z=exp(q*w); grid
subplot 333; stem(w, real(z)); title('real'); xlabel('w'); grid 
subplot 334; stem(w, imag(z)); title('imaginaria'); xlabel('w'); grid 
subplot 335; stem(w, abs(z)); title('magnitud'); xlabel('w'); grid 
subplot 336; stem(w, angle(z)); title('fase'); xlabel;('w'); grid 

%funcion sinusoidal 
J=[0:1:30]; 
u=3*cos(2*pi*((2+d+f)/90)*J*pi/3); 
subplot 337; stem(J,u); 
xlabel('J'); title('S. sinusoidal'); grid 
%funcion impulso
o=[-b:b]; 
p=[(o-a)==0]; 
subplot 338; stem(o,p); title('S. impulso'); xlabel('o'); grid
%funcion escalon 
S=[-f:f];
K=[(k-a)>=0]; 
subplot 339; stem(S,K); title('S. Escalon'); xlabel('S'); grid
 