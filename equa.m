function val=equa()
X='';
X=input('input varieties');%����'G m1 m2 R',�����ţ����Կո�
S=regexp(X,'\s+','split');
X=char(S);
len=length(X(:,1));
F=sym(input('input formula'));
V=input('input values(in order)');
V=str2num(V);
for j=1:len
    F=subs(F,X(j,:),V(j));
end
val=F;
end
