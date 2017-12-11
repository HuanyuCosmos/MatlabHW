 data0 = csvread('lamost.csv',1,0);
 len_data = size(data0);
 data=[];
 for n=1:len_data(1)
     if (data0(n,5)>4)&&(4000<data0(n,3))&&(data0(n,3)<8000)%ɸѡ
         data = [data;data0(n,:)];
     end
 end
ra = data(:,1);%��ɸѡ�������ݸ�ֵ��Ҫ�õı���
dec = data(:,2);
teff = data(:,3);
logg = data(:,5);
feh = data(:,7);
rverr = data(:,10);

fig=figure;%��ͼ��������ͼ

subplot(2,2,1)
scatter(ra,dec,'.')
xlabel('ra')
ylabel('dec')
title('ra-dec')
legend('ra-dec')

subplot(2,2,2)
scatter(teff,logg,[],feh,'.')
xlabel('teff')
ylabel('logg')
title('teff-logg-feh')
legend('color:feh')

subplot(2,2,3)
hist(rverr,200)
set(gca,'xlim',[0,50])%����x����
xlabel('rverr')
ylabel('n')
title('rverr')
legend('rverr')

saveas(fig,'fig.eps')
 
 