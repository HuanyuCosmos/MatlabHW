clear
%Matlab 12nd wk homework. About ��������������ʽ����
%
%Henry, BNU, 20171122
check=input('�Ƿ����������� ������1���� ������0\n>>>');
str1='������һ�������������飬������������������������';
str2='����λ���ʱ�׼��\n�����յ�����';
if check==1
    fprintf([ str1 '���������������������������' str2 ...
        '��Ϣ\n��[5.9e24,2e30,1.5e11,.1e24,.2e30,.01e11]��\n'])
    The_data=input('>>>');
    F_dev=gra_dev_f(The_data(1),The_data(2),The_data(3),The_data(4), ...
        The_data(5),The_data(6))
    F=gra_f(The_data(1),The_data(2),The_data(3))
else
        fprintf([str1 str2 ...
        '��Ϣ\n��[5.9e24,2e30,1.5e11]��\n'])
    The_data=input('>>>');
    F=gra_f(The_data(1),The_data(2),The_data(3))
end
clear check str1 str2