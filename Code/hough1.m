%%
close all
addpath('db1')
rotI=im_horDilate;
[H,Theta,Rho] = hough(rotI);
P  = houghpeaks(H,20,'threshold',ceil(0.2*max(H(:))));
x = Theta(P(:,2)); 
y = Rho(P(:,1));
lines = houghlines(rotI,Theta,Rho,P,'FillGap',20,'MinLength',200);
figure, imshow(rotI), hold on

%% Código para generar imágenes
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

end
title('Candidatos a bordes del estante',...
    'fontsize',14)


