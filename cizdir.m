load('FMsignal.mat')
fs=40000;
plotfft(u,fs);
disp(fs);
turev = diff(u);
figure(2)
plot(turev)
plotfft(turev,fs);
turev(turev<0) = 0;
turev=[0 turev];
y = lowpass(turev,150,fs);
plot(y)
ort = mean(y);
y_ort= y-ort;
plot(y_ort);
for i = 1:308 %%kacinci sample oldugu i ile 
    x=(i-1)*1280;
    z=i*1280;
    sample=y_ort((x+1):z);
    yeni_ort=mean(sample);
    if(yeni_ort > 0)
        yeni_ort=1;
    
    else
        yeni_ort=0;
    end
    
    fprintf("%d",yeni_ort)
end
