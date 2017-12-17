lamost=importdata('lamost.csv');
dat=lamost.data;
m=length(dat);
for n=m:-1:1
    if dat(n,5)>4.0&dat(n,3)<8000&dat(n,3)>4000
    else
        dat(n,:)=[];
    end
end
ra=dat(:,1)';
dec=dat(:,2)';
teff=dat(:,3)';
logg=dat(:,5)';
rverr=dat(:,10)';
t=length(rverr);
subplot(1,3,1);
plot(ra,dec,'k.','Markersize',1);
title('dec-raͼ');
xlabel('ra');
ylabel('dec');
subplot(1,3,2);
scatter(teff,logg,5,'r','field');
title('logg-teffͼ ');
xlabel('teff');
ylabel('logg');
subplot(1,3,3);
hist(rverr,0:1:50);
title('rverrֱ��ͼ');
xlabel('rverr');
ylabel('����');
legend('����');
set(gca,'xlim',[0,50]);