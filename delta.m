%������������ĺ�����Ϊ���룬�ĸ������ǰ����ֱ��Ǻ�����ֵ�����������������Ĺ�ʽ������������ʽ
%��ĳ������ã������ı����߷��ű������У���������ı�����ֵ�ͱ�������ֵ����ݴ���ı���˳������һ���ȳ��ȵľ���
%��Ϊ������Ҳ������ûɶҪ��ֱ�ӵ���������������ˣ�һ���������ҾͲ�����������
function [resultf,resultd,gravity,result0]=delta(funtion)
typestr=isa(funtion,'char');
typesym=isa(funtion,'sym');
if typestr==1;
    funtion=sym(funtion);
else
    if typesym==0;
        funtion=num2str(funtion);
    end
end
gravity=sym(funtion);
vars=symvar(gravity);
display('enter matrix of value of variety accroding to the matrix below')
display(vars)
varsv=input('=');
display('enter matrix of delta of variety accroding to the matrix below')
display(vars)
deltas=input('=');
result=sym(ones(1,length(vars)));
resultf=subs(gravity,vars,varsv);
var=diff(gravity,vars,1);
deltasum=sym([deltas;var]);
i=1;
while i<=length(deltas)
    result(i)=deltasum(1,i)*deltasum(2,i);
    i=i+1;
end
result0=sum(result);
resultd=subs(gravity,vars,varsv);






    
    