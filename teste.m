clc;
close all;
clear all;


%Lendo o audio para obter o y

%Tirando o sil�ncio do audio
%novoSinal = RemoveSilence(y, Fs);

y = audioread('audioGeovanne2\1.wav') ;
   T = wpdec(y,8,'db9');
   E = wenergy(T);

fileName = 'AudiosConcatenados';
arffwrite(fileName, E)

for n = 1:63
   y= audioread(strcat('audioGeovanne2\', int2str(n), '.wav')) ;
   T = wpdec(y,8,'db9');
   E1 = wenergy(T);
   E = [E1 1];
   dlmwrite(strcat(fileName,'.arff'),E,'-append') 
end
fprintf('saiu Geovanne');
%---------------------------------------------------------------------------------%

for n = 1:63
   y= audioread(strcat('audioFlavio2\', int2str(n), '.wav')) ;
   T = wpdec(y,8,'db9');
   E1 = wenergy(T);
   E = [E1 2];
   dlmwrite(strcat(fileName,'.arff'),E,'-append') 
end
fprintf('saiu Flavio');


