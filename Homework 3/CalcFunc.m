function CalcFunc=CalcFunc(func)   %�������һ���ַ���
Func=sym(func);     
s=regexp(findsym(Func),',','split');%��ȡȫ�����ɱ�����Ϊһ������
s1=s;  %������input˵���ı���
CalcFunc=Func ;
for i=1:length(s)
    s1(i)=strcat('����',s1(i)) ;
    CalcFunc=subs(CalcFunc,char(s(i)),input(char(s1(i)))) ;
end