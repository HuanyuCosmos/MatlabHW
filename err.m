function errors = err(func,argument,org_errs)
%errors = err(func,argument,org_errs),����һ���������ݹ�ʽ����ó������ֵ��
%�������˵����
%func �ַ��ͱ��� �������ʽ����ʽ�ұ߲���
%argument �ַ��;��� ��������ı�����
%org_errs ��ֵ�;��� �������ֵ��ע����argumentһһ��Ӧ
%���� err('a+2*b',['a','b'],[1,1])
%ans =
%
%   2.2361e+00
num = size(argument);%�õ�������������
FUNC = sym(func);
errors2 = 0;
for n = 1:num(2);
    errors2 = errors2+(diff(FUNC,argument(n))*org_errs(n))^2;%���ݹ�ʽ
end
errors = double(errors2)^0.5;
