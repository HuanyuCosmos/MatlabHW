function [l,b]=eqtogal(ra,dec)
%Equatorial coordinate to galactic coordinate 
ra_GP =192.85948;
dec_GP=27.12825;
l_CP=122.932;
b=asind(sind(dec_GP)*sind(dec)+cosd(dec_GP)*cosd(dec)*cosd(ra-ra_GP));
%��γ��ȡֵ��[-90,90]���sin��һһ��Ӧ��ϵ
l1=asind(cosd(dec)*sind(ra-ra_GP))/cosd(b);                            
l2=180-l1;
%l1,l2��ʾ l_CP-l ����������ȡֵ
%������ȡֵ��Χ[0,360]������ l_CP-l ��ΧҲ��360�ȣ���asin������ȡֵ����[-90,90]����һһ��Ӧ��
%��Ҫ�õ�������ϵʽ��cos�����������ж�l_CP-l������
bool=cosd(dec_GP)*sind(dec)-sind(dec_GP)*cosd(dec)*cosd(ra-ra_GP)/cosd(b);
if bool>0
    l=l_CP-l1;
else
    l=l_CP-l2;
end
if l<0
    l=l+360;
elseif l>360
    l=l-360;
end
%��lƽ����[0,360]����