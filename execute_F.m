clear
%ʵ�ֽ������룬m_1��m_2Ϊ�����������������λǧ��
%R0Ϊ�������ľ��룬��λ��
%deltam_1,deltam_2��deltaR�ֱ�Ϊ���ߵ����
m_1 = input('please input the weight of one of the two celestial bodis(kg):');
deltam_1 = input('please input the error of the weight of this celestial body(kg):');
m_2 = input('please input the weight of the other celestial body(kg):');
deltam_2 = input('please input the error of the weight of this celestial body(kg):');
R0 = input('please input the distance of the two celestial bodis(m):');
deltaR = input('please input the error of the distance of the two celestial bodis(m):');

%�����ӳ��������������໥������
F = F_calculate(m_1,m_2,R0)
%�����ӳ���������໥�����������
F_delta = F_delta(m_1,m_2,R0,deltam_1,deltam_2,deltaR)






