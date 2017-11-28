function force = Gforce(mass1, mass2, d)
%Gforce ��������������������
syms m1 m2 R
gravity = 6.67 * 10^-11 * m1 * m2 / R^2; %����������ʽ
gravity = subs(gravity, {m1, m2, R}, {mass1, mass2, d}); %������������
force = double(gravity);%ת�����ű���Ϊ������
end