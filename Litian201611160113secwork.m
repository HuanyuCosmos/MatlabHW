clear;clc;
Mass=input('����������(����Ϊ1��1000,��:');
Masslist=linspace(0.1,30,1000);
Luminolist=zeros(1,1000);
for n=1:1000; %��ѭ������б���ÿһ������������Ӧ�Ĺ��
    if Masslist(n)<0.43;
        Luminolist(n)=0.23*Masslist(n)^2.3;
    elseif Masslist(n)>=0.43&Masslist(n)<2;
         Luminolist(n)=Masslist(n)^4;
    elseif  Masslist(n)>=2&Masslist(n)<20;
         Luminolist(n)=1.5*Masslist(n)^3.5;
    elseif Masslist(n)>=20;
         Luminolist(n)=Masslist(n)*3200;
    end
end
fprintf('������ǹ��Ϊ%d����̫�����',Luminolist(Mass));
fprintf(' ')
List=input('�Ƿ�Ҫ�鿴������������ȶ�Ӧ��ϵ��(�ǻ��:','s');
tf = strcmp(List,'��');
if tf==1;
    display(Luminolist)
else
end

ra=input('�����뾭��:');
dec=input('������γ��:');
ra=ra*pi/180;
dec=dec*pi/180;
[b,l]=milkeyfuc(ra,dec);
display(l)
display(b)








