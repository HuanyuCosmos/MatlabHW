function [l,b] = eqtogal(ra,dec)
%����������ת��Ϊ��������
format long
ra1=ra*pi/180;
dec1=dec*pi/180;
gp1=192.85498*pi/180;
gp2=27.12825*pi/180;
cp=122.932;
b1=asin(sin(gp2)*sin(dec1)+cos(gp2)*cos(dec1)*cos(ra1-gp1));
b=b1*180/pi;

asin1=asin(cos(dec1)*sin(ra1-gp1)/cos(b1))*180/pi;
%���0-180��Χ��sin��sin��cp-l����ȵĽǶ�ֵ

acos1=acos((cos(gp2)*sin(dec1)-sin(gp2)*cos(dec1)*cos(ra1-gp1))/cos(b1))*180/pi;
%���-90��90��Χ��cos��cos��cp-l����ȵĽǶ�ֵ

if asin1==acos1   %��һ���޷����Ǻ�����ֵ����
    l=cp-asin1;
else
    if asin1<0 & acos1<90    %�������޷����Ǻ������Ƕ�Ϊacosֵ
        l=cp-acos1;
    elseif asin1<0 & acos1>90   %�������޷����Ǻ������Ƕ�ֵΪ-acos
        l=cp+acos1;
    elseif asin1>0 & acos1>=90 & acos1<=122.932  
        %�ڶ����޷����Ǻ����������cp-l��ϵ�жϽǶ�
        l=cp-acos1;
    elseif asin1>0 & acos1>122.932 &acos1<=180
        %�ڶ����޷����Ǻ����������cp-l��ϵ�жϽǶ�
        l=cp-(acos1-pi);
    end
end
end

