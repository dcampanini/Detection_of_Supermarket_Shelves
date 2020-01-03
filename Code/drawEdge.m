function [ imout2] = drawEdge( im_out,lines,u )

[f,c]=size(im_out);
npoint=length(lines);
for i=1:npoint
    for m=1:npoint
        xy1=lines(m).point1;
        xy2=lines(i).point1;
        if abs(xy1(1,2)-xy2(1,2))<u  && abs(xy1(1,2)-xy2(1,2))>5
            for p=1:abs(xy1(1,2)-xy2(1,2))
                for k=1:c
                    min_xy=min(xy1(1,2),xy2(1,2));
                    im_out(min_xy+p,k)=1;
                end
            end
        end
    end
end
%%
px0=find(im_out==0);
px1=find(im_out==1);
im_out(px0)=1;
im_out(px1)=0;
for q=1:f
    n0=find(im_out(q,:)==0);% Detectar los pixels negros
    if length(n0)<300 % Eliminar si hay pocos pixels negros en una fila
        im_out(q,:)=1;
    end
end

imout2=im_out;
end

