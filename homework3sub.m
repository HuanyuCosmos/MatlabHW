%N��ʾ���Ǳ�������
function [Force,Error] = homework3sub(N)

%�������
display('���6������m1,m2,R,dm1,dm2,dR��ֵ');
bl = zeros(N);
for i=1:N;
    bl(i)=sym(input('���������'));
end

%���幫ʽ
syms dr dM1 dM2;
F=sym('(G*M1*M2)/(r^2)');
e = sym(((diff(F,'r',1)*dr)^2+(diff(F,'M1',1)*dM1)^2+(diff(F,'M2',1)*dM2)^2)^1/2);

%��subs��������
F=subs(F,'G',6.67*10^-11);
F=subs(F,'M1',bl(1));
F=subs(F,'M2',bl(2));
F=subs(F,'r',bl(3));
e=subs(e,'G',6.67*10^-11);
e=subs(e,'M1',bl(1));
e=subs(e,'M2',bl(2));
e=subs(e,'r',bl(3));
e=subs(e,'dM1',bl(4));
e=subs(e,'dM2',bl(5));
e=subs(e,'dr',bl(6));

%�ó������������
Force = F;
Error = e;
disp('F = '),disp(Force),disp('e = '),disp(Error);

%����׶�
disp('���˰�Сʱ��д��Ҳ��������Ч��������ʦ��or������ʦ��������qwq')
end