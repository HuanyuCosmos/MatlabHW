clear;clc
fid=fopen('exp_data.txt','r');%��ȡ�ļ�
tline=fgetl(fid);tline=fgetl(fid);
N=str2num(tline(3));%��ȡN��ֵ
tline=fgetl(fid);
the_time_first=[];
the_date_first=[];
data_4=zeros(4);
data_n=[];
for round1=1:3%��ȡʱ��
    the_time=fgetl(fid);
    the_time_first=[the_time_first;the_time];
    the_date=fgetl(fid);
    the_date_first=[the_date_first;the_date];
    for round2=1:4%��ȡ��������
        data_4(round2,:)=str2num(fgetl(fid));
    end
    data_n=[data_n;data_4];
end
save readdata.mat%�洢����


        

