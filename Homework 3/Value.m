function Val = Value(foo,X,N_X)
%input foo and the Mitrix if its variables as X, and the value of each X
%which named N_X(also a Mitrix and need to Corresponding with X.

%Ҫ���û����뺯���� ���ű��ʽ��������F=f(x)����ʽ��������Ҫ������λ����
%һһ��Ӧ�� ���������Ƶľ���X��X��Ԫ�ض����Ѿ�����õķ��ű��������Լ�
%������ֵ�ľ���N_X��.
Val = subs(foo,X,N_X);
end
%��ʵ�������ͦ���ĵĩ�(���� ��)��,���ֵ�Ǹ����ű���,��Ҫ�Ļ�doubleһ��