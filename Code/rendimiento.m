function [M] = rendimiento( im, ground )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%% Binarizar ground
gndBin=im2bw(ground,0.5);
imshow(gndBin)

%% calcular intersecci�n y uni�n
inter=~im & ~gndBin;% se intersectan las matrices negadas para detectar
                    % cuando ambas tienen un pixel 0 ie uno negro, as� 
                    % luego se podr� sumar el resultado de forma directa
union=~im | ~gndBin;

inter=sum(sum(inter));
union=sum(sum(union));
M=inter/union;



end

