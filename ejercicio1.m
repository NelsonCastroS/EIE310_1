%mi rut es: 19330298-k
A=1; B=9; C=3; D=3; E=0; F=2; G=9; H=8; I=0; 
t=0:0.1:10; v=exp(-((B+A)/(2*C*(D+E)))*t).*sin(t); 
subplot 121; plot(t,v); title("PLOT"); 
xlabel("Tiempo[seg]"); ylabel("Volts"); grid; 
subplot 122; stem(t,v); title("STEM");
xlabel("tiempo[seg]"); ylabel("Volts"); grid; 
