function S=fintegrate(x,y,a,b)
%���η�����
%���룺һһ��Ӧxy����,���,�յ�
%��������ֽ��

buchang=min(diff(x))/50;                %��ԭ�м�����(50-1)��ֵ
xq=a:buchang:b;
yq=interp1(x,y,xq,'spline');

S=0;
for k=1:(length(xq)-1)
    deltaS=0.5*buchang*(yq(k)+yq(k+1)); %deltaSÿһ���������
    S=S+deltaS;
end
% S=0.5*buchang*(2*sum(yq)-yq(1)-yq(end));Ҳ����ֱ��������һ�м������S
disp(S)