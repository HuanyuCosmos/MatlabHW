%������
%E��eΪ���ʽ��NΪ����������variateΪ���б���,DiffΪ����
function Error=errors(e,N);
E=sym(e);
variate='';
value=zeros(1,N);
error='';
error_value=zeros(1,N);
for i=1:N;
    variate(i)=sym(input('please input the variate'));%ȷ��������
end
for m=1:N;
    value(m)=input('please input the value');%ȷ����������ֵ
end
for l=1:N;
    error(l)=sym(input('please input the error'));
end
for n=1:N;
    error_value(n)=input('please input the error value');%ȷ������������ֵ
end
Error=sym(0);
Diff=E;
for k=1:N;
    Diff=diff(E,variate(k),1);
    Diff=(Diff*error(k))^2;
    Error=Error+Diff;
end
for j=1:N;
    Error=subs(Error,variate(j),value(j));%���ζԸ�����������ֵ�����滻
end
for p=1:N;
    Error=subs(Error,error(p),error_value(p));%���ζԸ��������������ֵ�����滻
end
Error=Error^0.5;
end