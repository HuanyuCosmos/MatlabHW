function dFunc=dFunc(func)  %�������һ���ַ���
Func=sym(func);    
s=regexp(findsym(Func),',','split');%��ȡȫ�����ɱ�����Ϊһ������
ds=s;  %����Ӧ��ds
dFunc=0;
for i=1:length(s)
    ds(i)=strcat('d',ds(i));  %����������ds
    dFunc=diff(Func,char(s(i)),1)^2*char(ds(i))+dFunc;
end
dFunc=sqrt(dFunc);
simplify(dFunc);
