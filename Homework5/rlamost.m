function rlamost()
data=importdata('lamost.csv',',',1);
teff=data.data(:,3);
logg=data.data(:,5);                   %����teff,logg����

matlog1=logg>4;                        %����logg>4��ָ��
matlog2=(teff>4000 & teff<8000);       %����4000<teff<8000��ָ��
matlog=logical(matlog1.*matlog2);      %ȡ����ָ�궼����Ĳ��֣��ó���������Ϊ1*1=1,1*0=0,0*0=0

ra=data.data(matlog,1);
dec=data.data(matlog,2);
teff=teff(matlog);
logg=logg(matlog);
feh=data.data(matlog,7);
rverr=data.data(matlog,10);            %��data.data�ж�ȡ���������ж�������ra,dec,fej,rverr��,teff,loggҲ���¸�ֵ

fig1=figure(1);
set(gcf,'position',[50 50 800 600])    %���û���λ��,��С

subplot(2,2,1)
scatter(ra,dec,1,[0 0.5 0.5],'filled') %����������������ֲ�ͼ
title('Distribution of Coordinate')
xlabel('RA')
ylabel('DEC')
leg1=legend('target');
set(leg1,'position',[0.4 0.93 0.1 0.03])
set(gca,'xlim',[80,90],'ylim',[20,30],'xtick',80:2:90,'fontsize',9)

subplot(2,2,3)
scatter(teff,logg,2,feh,'filled') %������������teff-loggͼ����feh��ʾ��ɫ
c=colorbar;
c.Label.String='feh';
title('target''s logg-teff ')
xlabel('Teff')
ylabel('logg')
leg2=legend('target');
set(leg2,'position',[0.35 0.46 0.1 0.03])
set(gca,'xdir','reverse','fontsize',9)

subplot(1,2,2)
hist(rverr(rverr<50),50,'k')      %��rverr<50�ķֲ�ͼ
title('Histogram of RVerr')
xlabel('RVerr')
ylabel('number')
legend('number')
set(gca,'fontsize',9)
h=findobj(gca,'Type','patch');
h.FaceColor=[0 0.5 0.5];
h.EdgeColor='w';                   %������ɫ

saveas(fig1,'lamostDataPrcoessedBySxr.jpg') %����ͼƬ