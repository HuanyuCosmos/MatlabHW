%  ydzbΪ��������
%  (alpha,delta)Ϊ����ĳ�����꣬��l��b��Ϊ��������alphaGP,deltaGP��lCPΪ��������
function ydzb=eqtogal(alpha,delta)
alpha1=alpha*pi/180;
delta1=delta*pi/180;
ydzb=zeros(1,2);
alphaGP=192.85948*pi/180;
deltaGP=27.12825*pi/180;
lCP=122.932*pi/180;
b=asin(sin(deltaGP)*sin(delta1)+cos(deltaGP)*cos(delta1)*cos(alpha1-alphaGP));
l=lCP-acos((cos(deltaGP)*sin(delta1)-sin(deltaGP)*cos(delta1)*cos(alpha1-alphaGP))/cos(b));
ydzb(1)=l*180/pi;
ydzb(2)=b*180/pi;
end




