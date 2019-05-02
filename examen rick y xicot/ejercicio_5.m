clc;
close all;
Fs=4;
T=1/Fs;
t=0:T:100-T;
F1=1;
F2=2;
%Ft= 5+ 2*cos(((pi*t)/2)-90)+3*cos(pi*t); 
Ft= 5+ 2*cos(2*pi*t*F1-90)+3*cos(pi*t*2*F2);
figure(1)
stem(t,Ft)
% stem(Ft)
% stem(fft(Ft))
L=length(Ft)
L2=2^nextpow2(L);
x=fft(Ft,L2);
figure
stem(abs(x));