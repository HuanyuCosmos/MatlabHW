fid=fopen('exp_data.txt','r');  %���ļ���ȡ
title=fgetl(fid)
number=fgetl(fid)
fgetl(fid);

time1=fgetl(fid);                %���һ������
date1=fgetl(fid);
datas1=(fscanf(fid,'%f',[4,4]))';
fgetl(fid);       
time2=fgetl(fid);                 %��ڶ�������
date2=fgetl(fid);
datas2=(fscanf(fid,'%f',[4,4]))';
fgetl(fid);
time3=fgetl(fid);                 %�����������
date3=fgetl(fid);
datas3=(fscanf(fid,'%f',[4,4]))';

time=char(time1,time2,time3)  %������ݲ����������ݷ�������
date=char(date1,date2,date3)
datas=[datas1;datas2;datas3]

save('observedata.mat','title','number','time','date','datas')  %����