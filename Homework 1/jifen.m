function z=jifen(x,y,a,b)
sizex=size(x);
sizey=size(y);
xx=b-a;
xq=a:xx/100000:b;
z=0;
if sizex(1,2)~=sizey(1,2)
    fprintf('x��y���ݶ�Ӧ�������⣬����������')
elseif a<min(x)||b>max(x)
    fprintf('���������޳���x���ݷ�Χ')
else
    yq=interp1(x,y,xq);
    sizeyq=size(yq);
    for n=(1:sizeyq(1,2)-1)
        z=z+((yq(n)+yq(n+1)).*(xx/100000)/2);
    end
end
end