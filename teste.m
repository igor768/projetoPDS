clc;
close all;
clear all;


%Lendo o audio para obter o y
[y,Fs] = audioread('testeg1.wav');

%Tirando o sil�ncio do audio
%novoSinal = RemoveSilence(y, Fs);

[y,Fs] = audioread('audioGeovanne2\1.wav') ;
   T = wpdec(y,8,'db9');
   E = wenergy(T);

fileName = 'teste';
classe = 'Geovanne';
arffwrite(fileName, E,classe)

for n = 1:63
   [y,Fs] = audioread(strcat('audioGeovanne2\', int2str(n), '.wav')) ;
   T = wpdec(y,8,'db9');
   E = wenergy(T);
   dlmwrite(strcat(fileName,'.arff'),E,'-append') 
end
fprintf('saiu');


