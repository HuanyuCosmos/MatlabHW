%��ֵ�����������������������
format long
syms m1 m2 r G M1 M2 R
f=loug(m1,m2,r,G)
F=wuchachuandi(m1,m2,r,G,M1,M2,R,f)
m1=input('�������һ����������\n');
m2=input('������ڶ�����������\n');
r=input('���������������\n');
G=6.67*10^(-11);
M1=input('�������һ�������������\n');
M2=input('������ڶ��������������\n');
R=input('������������������\n');

display('���������������Ϊ')
f0=subs(f)
display('������������������Ϊ + -')
F0=subs(F)