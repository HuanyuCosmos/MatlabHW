%�ײ�I/O��ȡ���޸������ļ�
clear

%�򿪲���ȡ����
fid = fopen('exp_data.txt');

%�޳���ͷ
for j=1:3
   dismiss = fgets(fid);
end

%��time��date���ж������
%������data������ά������
time = [];
date = [];
for n=1:3
    time = [time,fgets(fid)];
    date = [date,fgets(fid)];
    data(:,:,n) = fscanf(fid,'%f\n',[4,4]);
end

%���time��date��data
%ע�����鸳ֵʱ���ж��룬��Ҫԭ���������ת��
time
date
data = permute(data,[2 1 3])

fclose(fid);

  




    
