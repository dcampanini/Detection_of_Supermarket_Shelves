function [ im_canny] = deleteVert(im_canny,im_vert)
%Elimina l�neas verticales 
x_vert=find(im_vert==1);
im_canny(x_vert)=0;
end

