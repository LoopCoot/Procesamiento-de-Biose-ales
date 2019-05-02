clc;
close all;

    
    
    fc=200;
    fs=2*fc;
    Wn=fc/fs;
    [num,den]=butter(9,Wn,'high');
    sys = tf(num,den,1)
    [h,w]=freqz(num,den);
    figure(1)
    plot(w,abs(h))
    hold on 
    

hold off
