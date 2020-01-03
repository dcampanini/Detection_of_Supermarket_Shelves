%% Imagen a color
clear
addpath('db1')
[a map]=imread('db45.jpg');
figure(1)
imshow(a,map);
title('Imagen original db45 ','fontsize',14)
imwrite(a,'Informe1/Imagenes/rgb.jpg')

%% Pasar a grises
ImagenGris=rgb2gray(a);
figure(2)
imshow(ImagenGris)
title('Imagen en escala de grises','fontsize',14)
imwrite(ImagenGris,'Informe1/Imagenes/gris.jpg')
%% Filtro Sobel Horizontal
im_hor=edge(ImagenGris,'Sobel',0.05,'horizontal');% La dirección se
                                            % usa solo para el Prewitt
                                            % o el Sobel
figure(66)
imshow(im_hor)
title('Imagen resultante de aplicar filtro Sobel horizontal',...
    'fontsize',14)
imwrite(im_hor,'Informe1/Imagenes/SobelHor.jpg')

%% Filtro Sobel vertical 
im_vert=edge(ImagenGris,'Sobel',0.05,'vertical');% La dirección se
                                            %usa solo para el Prewitt
                                            %o el Sobel
figure(4)
imshow(im_vert)
title('Imagen resultante de aplicar filtro Sobel vertical',...
    'fontsize',14)
imwrite(im_vert,'Informe1/Imagenes/SobelVer.jpg')

%% Filtro de Canny

im_canny=edge(ImagenGris,'Canny',0.7);
figure(3)
imshow(im_canny)
imwrite(im_canny,'Informe1/Imagenes/canny.jpg')

%% Agrandar verticales
se90 = strel('line', 2, 90);% ancho=1, grados=90
im_vertDilate = imdilate(im_vert, [se90]);
figure
imshow(im_vertDilate)
title('Imagen resultante de agrandar las líneas verticales',...
    'fontsize',14)
imwrite(im_vertDilate,'Informe1/Imagenes/SobelVerDilate.jpg')

%% Agrandar horizontales
se90 = strel('line', 2, 90);% ancho=1, grados=90
im_horDilate = imdilate(im_hor, [se90]);
figure
imshow(im_horDilate)
title('Imagen resultante de agrandar las líneas horizontales',...
    'fontsize',14)
imwrite(im_horDilate,'Informe1/Imagenes/SobelHorDilate.jpg')

%% Imagen resultante
[ im_out] = deleteVert(im_canny,im_vertDilate);
figure(5)
imshow(im_out)
title('Imagen resultante de aplicar Canny menos las líneas verticales dilatadas',...
    'fontsize',14)
imwrite(im_out,'Informe1/Imagenes/CannyMenosVert.jpg')
