function s=jifen(x,y,a,b)
xq=a:1e-5:b%��ֵ
yq=interp1(x,y,xq,'spline');
s=0;
for n=2:length(xq)
    s=s+(yq(n-1)+yq(n))*1/2*1e-5;%����������������
end
 