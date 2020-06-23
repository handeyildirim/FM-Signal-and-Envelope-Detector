function [w] = plotfft(signal,fs)
%UNTÝTLED2 Summary of this function goes here
%   Detailed explanation goes here
T=numel(signal)/fs;
t=linspace(0,T, numel(signal))'; %zaman ekseni
N = numel(t);
w = obw(signal,fs); %occupied bandwidth
fftm = fft(signal)./numel(signal);
fftm = abs(fftm);
fftm = fftshift(fftm);
%%Frequency specifications:
dF = fs/N;                      % hertz
f = -fs/2:dF:fs/2-dF;           % hertz
%fscale = linspace(-w, w ,numel(fftm));
figure
plot(f,fftm);
% [~, maxindex]=max(fftm.*(f>0)');
% maxfreq=f(maxindex);
end