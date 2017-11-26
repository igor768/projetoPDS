clc;
close all;
clear all;


%Lendo o audio para obter o y

%Tirando o sil�ncio do audio
%novoSinal = RemoveSilence(y, Fs);

y = audioread('audioGeovanne2\1.wav') ;
   T = wpdec(y,8,'db9');
   E = wenergy(T);

fileName = 'Geovanne';
classe = '1';
arffwrite(fileName, E,classe)

for n = 1:63
   y= audioread(strcat('audioGeovanne2\', int2str(n), '.wav')) ;
   T = wpdec(y,8,'db9');
   E = wenergy(T);
   dlmwrite(strcat(fileName,'.arff'),E,'-append') 
end
fprintf('saiu Geovanne');
%---------------------------------------------------------------------------------%
y = audioread('audioFlavio2\1.wav') ;
   T = wpdec(y,8,'db9');
   E = wenergy(T);

fileName = 'Flavio';
classe = '2';
arffwrite(fileName, E,classe)

for n = 1:63
   y= audioread(strcat('audioFlavio2\', int2str(n), '.wav')) ;
   T = wpdec(y,8,'db9');
   E = wenergy(T);
   dlmwrite(strcat(fileName,'.arff'),E,'-append') 
end
fprintf('saiu Flavio');


