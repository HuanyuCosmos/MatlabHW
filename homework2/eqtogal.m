function [l,b] = eqtogal(ra,dec)
alphaGP=192.85948;
detGP=27.12825;
lCP=122.932;
b=asind(sind(detGP)*sind(dec)+cosd(detGP)*cosd(alphaGP-ra));
l=-asind(cosd(dec)*sind(ra-alphaGP))/cosd(b)-lCP;
display([l,b])
%%����ϵ�Ķ�������ѧϵ��ʵ���ǿ���̫������Ҳ��֪����Щ����ʲô��˼��