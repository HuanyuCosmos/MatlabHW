clear;clc;close all
data = importdata('lamost 12.6.csv', ',',1);

%���ṹתΪ����
data = cat(2,data.data);

%Ϊ���б�������ֵ����finΪɸѡ��ı���
size_lam = size(data);
logg = data(:,5);
teff = data(:,3);
ra = data(:,1);
dec = data(:,2);
feh = data(:,7);
rverr = data(:,10);
logg_fin = [];
teff_fin = [];
ra_fin = [];
dec_fin = [];
feh_fin = [];
rverr_fin = [];

%ɸѡ���Ϸ�Χ�ı������������_fin
for j=1:size_lam(1)
	if (logg(j)>4.0)&(teff(j)>4000)&(teff(j)<8000)
		logg_fin = [logg_fin,logg(j)];
        teff_fin = [teff_fin,teff(j)];
		ra_fin = [ra_fin,ra(j)];
		dec_fin = [dec_fin,dec(j)];
		feh_fin = [feh_fin,feh(j)];
	end
	if (rverr(j)>0)&(rverr(j)<50)
	rverr_fin = [rverr_fin,rverr(j)];
	end
end

% ������ͼ�����ͼ�������⡢��������
subplot(2,2,1);
plot(ra_fin,dec_fin ,'.r','markersize',0.1);
title('scatter (ra,dec)');
xlabel('ra');ylabel('dec');
legend('star location');

subplot(2,2,2);
scatter(teff_fin,logg_fin,0.1,feh_fin);
title('scatter (teff,logg)');
xlabel('teff');ylabel('logg');
legend('t-l');

subplot(2,2,3);
hist(rverr_fin,50);
title('distributio(rverr)');
xlabel('scale (0~50)');ylabel('rverr');
legend('rverr');
