% ��ȡ lamost.csv ����
% ��ѡ�� logg>4.0 �Լ� 4000<teff<8000 ��Ŀ��
% ����ЩĿ�껭һ��ͼ������������ͼ
% ra��dec �� plot ɢ��ͼ
% teff, logg ��ɢ��ͼ������ɫ��ʾ feh
% rverr ��0��50֮�����״�ֲ�ͼ
% 
% Ҫ������ͼ��x��y��˵�������⡢ͼ��


clear;clc;close all
%read lamost.csv
lamost = importdata('lamost.csv',',',1);
%find target
lamost_flt = lamost.data(lamost.data(:,5) > 4.0 &... 
    8000 > lamost.data(:,3) & lamost.data(:,3) > 4000,:);
RA = lamost_flt(:,1) ;DEC = lamost_flt(:,2);
teff = lamost_flt(:,3);logg = lamost_flt(:,5); feh = lamost_flt(:,7);
rverr = lamost_flt(:,10);
%make pictures
% ra��dec �� plot ɢ��ͼ
% teff, logg ��ɢ��ͼ������ɫ��ʾ feh
% rverr ��0��50֮�����״�ֲ�ͼ
figure
hold on 
subplot(3,1,1)
plot(RA,DEC,'k.');
title('RA-DEC');
xlabel('RA');ylabel('DEC');
legend('POSITIONS');
subplot(3,1,2)
scatter(teff,logg,1.5,feh)
title('H-R');
xlabel('teff');ylabel('logg');
legend('scatters-.-');
subplot(3,1,3)
hist(rverr(rverr>0 & rverr<50),50);
title('histttttttt');
xlabel('rverr');ylabel('numbers');
legend('rverr_b_i_n');
hold off



