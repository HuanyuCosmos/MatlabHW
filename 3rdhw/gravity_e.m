mass1 = 5.9 * 10^24; %��������
mass2 = 2 * 10^30; %̫������ 
d = 1.50 * 10^11; %�յؾ���
deltam1 = 0.1 * 10^24; %�����������
deltam2 = 0.2 * 10^30; %̫���������
deltad = 0.01 * 10^11; %�յؾ������
force = Gforce(mass1, mass2, d) %�յ�����
force_error = Ferror(mass1, mass2, d, deltam1, deltam2, deltad)%�յ��������
