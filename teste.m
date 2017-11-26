clc;close all;clear all;


%Lendo o audio para obter o y
[y,Fs] = audioread('testeg1.wav');

%Tirando o silêncio do audio
%novoSinal = RemoveSilence(y, Fs);


for n = 1:63
   [y,Fs] = audioread(strcat('audioGeovanne2\', int2str(n), '.wav')) ;
   T = wpdec(y,8,'db9');
   E = wenergy(T);
   arffwrite('teste', E)
   
end
fprintf('saiu');


