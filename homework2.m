%������ǹ��
mass=linspace(0.1,30,1000);%��������
for n=1:1000
    if mass(n)<=0.43
        luminosity(n)=0.23*mass(n)^2.3
    elseif 0.43<mass(n)<=2
            luminosity(n)=mass(n)^4
    elseif 2<mass(n)<=20
            luminosity(n)=1.5*mass(n)^3.5
    else
            luminosity(n)=3200*mass(n)
    end%�����ǰ��������ಢ������
end%��ÿһ��ֵ˳����
result=[mass;luminosity]%������������
display(result)