M=input('�����������̫����������\nM(����)/M(̫��)=');
if M<=0.43
    L=0.23*M^2.3;
elseif M<=2
        L=M^4;
elseif M<=20
            L=1.5*M^3.5;
        else 
            L=3200*M;
end
disp('�ú��ǵĹ��Ϊ')
disp(L);