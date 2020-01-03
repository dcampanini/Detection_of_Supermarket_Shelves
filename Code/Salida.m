%% Genera el resultado final
[ imout2] = drawEdge( im_out,lines,70);
%% Rendimiento
addpath('groundT')
addpath('ground')
ground=imread('db45_ground.jpg');
[M] = rendimiento( im_out, ground )
%%
figure(1)
imshow(ground)
title('M�scara Groundtruth','fontsize',14)
imwrite(ground,'Informe1/Imagenes/MGround.jpg')

figure(2)
imshow(imout2)
title('M�scara Detectada','fontsize',14)
imwrite(imout2,'Informe1/Imagenes/MDetectada.jpg')
