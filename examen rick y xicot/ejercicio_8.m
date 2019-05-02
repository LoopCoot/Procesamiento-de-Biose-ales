[N Wn]=buttord(0.002736, 0.007298, 3, 25, 's')
%0.0049, 0.01331, 3, 25, 's'
[b a]=butter(N, Wn, 's');
[H W]=freqs(b,a); %Notemos que freqs() es para análogo
subplot(211)
plot(W, abs(H)); grid;
%axis([0 0.1 -0.1 1.1])
xlabel('Frecuencia, rad/s')
ylabel('Magnitud')
title('Filtro Analogo H(\Omega)')
subplot(212)
plot(W, 20*log10(abs(H)));
%axis([0 2 0 1])
grid
xlabel('Frecuencia, rad/s')
title('Filtro Analog H(\Omega) Ganancia en dB')
ylabel('Ganancia en dB')
%axis([0 0.1 -80 10])
