function t=homework6jf(x,y,a,b)%xûɶ���ã�a��b��Ҫ��x��ȡֵ��Χ��
len = (b-a)/1000;%����
t=0;
xq=a:len:b;
yq=interp1(x,y,xq);%��ֵ
for n=1:1000
   s=0.5*(yq(n)+yq(n+1))*len;%���η��������
   t=t+s;
end
disp(t)
end
