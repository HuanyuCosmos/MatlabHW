%���ļ��У��кܶ���̱�������a,b,c,d��ʾ�ˣ�����������ʱ�������������������ҽ�����������clear���ˡ���
%��Ӱ������ʹ��������

%���ļ�
fid = fopen('exp_data.txt','r');

%��txt�ļ������е���Ϣ���뵽a��ȥ��������ã�Ȼ��ر�Դ�ļ�������޶ȵط�ֹԴ�ļ������
tline = fgetl(fid);
for n = 1:21;
    a{n} = tline;
    tline = fgetl(fid); 
end
fclose(fid);

%��a�е����ݱ�úÿ�һ�㣬��b����ʾ����
b{1,1} = a{1};
b{1,2} = a{2};
lin = 4;
for m = 2:4;
    b{m,1} = a{lin};
    lin = lin+1;
    b{m,2} = a{lin};
    lin = lin+1;
    for n = 1:4;
        b{m,n+2} = a{lin};
        lin = lin+1;
    end
end

%��ÿһ���16�����ݷֿ������ٴ�д�뵽b��
for m = 2:4
   for n = 3:6
      c = b{m,n} ;
      d(m-1,4*(n-2)-3:4*(n-2)) = str2num(c);
   end
end
for m = 2:4
   for n = 3:18
      b{m,n} = d(m-1,n-2); 
   end
end

%�������b ��ת����exp_data�У������mat��ʽ�����������Ĺ��̱�����clear��
exp_data = b;
save('exp_data.mat','exp_data');
clear;
load('exp_data.mat');







