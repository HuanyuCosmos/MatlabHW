clear,clc,close all;
fid = fopen('exp_data.txt','r');
dataname = fgetl(fid);%�����ͷ
parament = fgetl(fid);%�������
fgetl(fid);
n = 1;
time_n = 1;
date_n = 1;
data_n = 1;
time = char(zeros(3,8));%����ʱ�䣬���е��ַ���
date = char(zeros(3,11));%�������ڣ����е��ַ���
data = zeros(12,4);%�����������ݣ�16*4�ı�񣬰�ԭ��ʽ���У���ʱ��˳����ϵ�������
while ~feof(fid)
    if mod(n,3)==1%��ʱ��
        time(time_n,:) = fgetl(fid);
        time_n = time_n +1;
    elseif mod(n,3)==2%������
        date(date_n,:) = fgetl(fid);
        date_n = data_n+1;
    elseif mod(n,3)==0%������
        data(data_n:data_n+3,1:4) = (fscanf(fid,'%f  %f  %f  %f',[4,4]))';%ת��
        data_n = data_n+4;
        fgetl(fid);%��ָ��������һ��
    end
n = n + 1;
end
