%-�������������ֵ
%-���룺cal_function(f,vars,values)
%   f��Ҫ����ĺ�����������ʽ
%   vars�������д��ڵı�������{'a','b','c','d'}
%   values�������б�����ֵ������vars�еı���һһ��Ӧ����{0.1,1e-2,1,3.42}
%-���������õ��ĺ���ֵ����vars��dvars��С��ͬ������0��
%-֣���� 201711160114

function res = cal_function(f,vars,values)
res=0;
if size(vars)==size(values)
    res=double(subs(f,vars,values));
else
    fprintf('�����ͱ���ֵ�е�Ԫ�ر���һһ��Ӧ�Ҽ��ϴ�С��ͬ');
end
end