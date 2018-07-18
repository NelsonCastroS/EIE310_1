%diseño de filtro 
fc=200;
FC=250; 
Fs= 1000;
N=1001;
f1=0
f2=500
m1=1e-6;
wn= [2 * fc / Fs , 2* FC / Fs]; 
b = fir1(N-1, wn, 'bandpass', hanning(N)); 
t = fir1(N-1, wn, 'bandpass', hamming(N)); 
k = fir1(N-1, wn, 'bandpass', kaiser(N,10));
%impulso
n = [1 : N]; subplot 411; stem(n, b); grid; xlabel('n'); title('h(n)'), grid;
% Respuesta en frecuencia kaiser
f1b = 0; f2b = 500;
fb = [f1b : (f2b-f1b)/2047 : f2b];
Hb = freqz(k, 1, fb, Fs)
subplot 412; semilogy(fb, abs(Hb)); grid
axis([f1b f2b 1e-8 1.1])
xlabel('f[Hz]'); title('kaiser')
%hanning
f = [f1 : (f2-f1)/1023 : f2];
H = freqz(b, 1, f, Fs);
subplot 413; semilogy(f, abs(H)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('hanning'); 
%hamming
F = [f1 : (f2-f1)/1023 : f2];
h = freqz(t, 1, F, Fs);
subplot 414; semilogy(F, abs(h)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('hamming'); 