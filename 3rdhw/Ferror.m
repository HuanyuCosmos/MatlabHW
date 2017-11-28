function error = Ferror(mass1, mass2, d, deltam1, deltam2, deltad)
%Ferror �Ƶ�����������ʽ�����ݹ�ʽ���������
syms m1 m2 R dm1 dm2 dR
gravity = 6.67 * 10^-11 * m1 * m2 / R^2; %����������ʽ
%�Ƶ����ݹ�ʽ
dgravity = abs(sqrt((diff(gravity, m1, 1) * dm1)^2 ...
    + (diff(gravity, m2, 1) * dm2)^2 ...
    + (diff(gravity, R, 1) * dR)^2));
error = subs(dgravity, {m1, m2, R, dm1, dm2, dR}, ...
    {mass1, mass2, d, deltam1, deltam2, deltad});
error = double(error);
end

