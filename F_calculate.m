%���ӳ��������������໥����
function F = F_calculate(m_1,m_2,R0)

%�������ű���
syms G
syms R
syms m1
syms m2

%��G��ֵ������F�Ĺ�ʽ
G = sym('6.67e-11');
F = G*m1*m2/R^2;

%�Խ�������ֵ����F��ʽ
F = subs(F,m1,m_1);
F = subs(F,m2,m_2);
F = subs(F,R,R0);

end