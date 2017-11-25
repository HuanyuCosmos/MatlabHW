%���ӳ������������໥�����������
function delta_F = F_delta(m_1,m_2,R0,deltam_1,deltam_2,deltaR)

%������ʽ��Ҫ�ķ��ű���
syms G
syms R
syms m1
syms m2
syms delta_m1
syms delta_m2
syms delta_R

%����ʽ���ݸ�����
%F_m1Ϊm1�����ݽ��
%F_m2Ϊm2�����ݽ��
%F_RΪ�������ݽ��
G = sym('6.67e-11');
F = G*m1*m2/R^2;
F_m1 = (diff(F,m1,1)*delta_m1)^2;
F_m2 = (diff(F,m2,1)*delta_m2)^2;
F_R = (diff(F,R,1)*delta_R)^2;

%���û�����ֲֵ������ֱ�������

F_m1 = subs(F_m1,m1,m_1);
F_m1 = subs(F_m1,m2,m_2);
F_m1 = subs(F_m1,R,R0);
F_m1 = subs(F_m1,delta_m1,deltam_1);
F_m1 = subs(F_m1,delta_m2,deltam_2);
F_m1 = subs(F_m1,delta_R,deltaR);

F_m2 = subs(F_m2,m1,m_1);
F_m2 = subs(F_m2,m2,m_2);
F_m2 = subs(F_m2,R,R0);
F_m2 = subs(F_m2,delta_m1,deltam_1);
F_m2 = subs(F_m2,delta_m2,deltam_2);
F_m2 = subs(F_m2,delta_R,deltaR);

F_R= subs(F_R,m1,m_1);
F_R= subs(F_R,m2,m_2);
F_R= subs(F_R,R,R0);
F_R = subs(F_R,delta_m1,deltam_1);
F_R = subs(F_R,delta_m2,deltam_2);
F_R = subs(F_R,delta_R,deltaR);

%�������
delta_F = sqrt(F_m1+F_m2+F_R);

end

