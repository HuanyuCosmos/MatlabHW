N=input('������N=');
x=0;
for k=0:N 
    x=x+factorial(4*k)*(1103+26390*k)/(factorial(k)^4*396^(4*k));
end
y=1/(2^1.5*x/9801)
display('����ֵ-ϵͳֵ=');
y-pi