function F=gra(m1,m2,r)
%F=gra(m1,m2,r) �������������ļ���ֵ
%�������˵����
%m1 ��ֵ�ͱ���
%m2 ��ֵ�ͱ���
%r ��ֵ�ͱ���
%ע��ͳһ��λ
format shortE
syms M1 M2 R G
GRA = sym('G*M1*M2/(R^2)');
F = subs(GRA,{G,M1,M2,R},{6.672E-11,m1,m2,r});
F = double(F);
    
