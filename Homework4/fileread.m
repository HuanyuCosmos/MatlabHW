clear;clc;
fid=fopen('exp_data.txt','r');
head1=fgetl(fid);
head2=fgetl(fid);
n=str2double(head2(3));             %��head2����ȡ���۲����n
fgetl(fid);
data=[];
head=[];
for k=1:n
    head3=fscanf(fid,'%s',[1,1]);
    head4=fscanf(fid,'%s',[1,1]);
    head=[head;[head3,' ',head4]];%head��n�ι۲��ʱ�䡢���ڣ���ÿһ�ε�head3,head4�ӵ�head����һ��
    data1=fscanf(fid,'%f',[4,4]); %data1��ÿ��ѭ��������4*4���ݵ��м����
    data1=data1';                 %��Ϊfscanf�ǰ��д洢��Ϊ����exp_data.txt�п�����һ�£�����ת��
    data=cat(3,data,data1);       %��ÿһ��ѭ��������data1�ӵ�data����һҳ
end
fclose(fid);
clearvars -except n head data    %���м����ɾȥ��ֻ�����۲����n,�۲�ʱ������head,����data
save fileread.mat                %�������洢����һ�ο����� load fileread.mat ���������뵽workspace