%������ֵ
%E��eΪ���ʽ��NΪ����������variateΪ���б���,valueΪ������Ӧ��ֵ,OutputΪ���
function Output=equation(e,N);
E=sym(e);
variate='';
value=zeros(1,N);
for i=1:N;
    variate(i)=sym(input('please input the variate'));%ȷ��������
end
for k=1:N;
    value(k)=input('please input the value');%ȷ����������ֵ
end
for j=1:N;
    E=subs(E,variate(j),value(j));%���ζԸ�����������ֵ�����滻
end
Output=E;
end
