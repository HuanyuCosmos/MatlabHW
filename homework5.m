clear

data = importdata('lamost.csv');
ra = data.data(:,1);
dec = data.data(:,2);
teff = data.data(:,3);
logg = data.data(:,5);
feh = data.data(:,7);
rverr = data.data(:,10);

m=0;
for n=1:43455
   Logg = logg(n);
   Teff = teff(n);
   if Logg>4&&Teff>4000&&Teff<8000
       m=m+1;
       aim(m,:)=n;
   end
end
clear('Logg','Teff','m','n')

N=size(aim);
for n=1:N(1)
    Ra(n)=ra(aim(n));
    Dec(n)=dec(aim(n));
    Teff(n)=teff(aim(n));
    Logg(n)=logg(aim(n));
    Feh(n)=feh(aim(n));
    Rverr(n)=rverr(aim(n));
end


subplot(2,2,1)
plot(Ra,Dec,'c.','MarkerSize',2)
title('ra&dec��ɢ��ͼ')
xlabel('ra')
ylabel('dec')

subplot(2,2,2)
scatter(Teff,Logg,2,Feh)
title('teff&logg��ɢ��ͼ')
xlabel('teff')
ylabel('logg')

subplot(2,2,3)
hist(Rverr,0:1:50)
%�ı���ɫ������״ͼ���ÿ�һ��
h= findobj(gca,'Type','patch');
set(h,'FaceColor','c','EdgeColor','b')
%�ı�������ȡֵ��Χ
set(gca,'xlim',[0,50])
title('rverr ��0��50֮�����״�ֲ�ͼ')
xlabel('rverr')
ylabel('����')

