function intgra = intergral(x,y,a,b)
%���������xֵ��yֵ���������ޣ���������
xq = a:10^(-7):b;%���
f = interp1(x,y,xq,'spline');%ÿ����ֵ��ȡֵ
intgra=sum(10^(-7)*f)-f(1)*10^(-7);%���Ƴɾ��μ��㣬��Ϊ��ֵ�Ⱦ��ζ�һ�������Լ�ȥ��һ��ֵ
end