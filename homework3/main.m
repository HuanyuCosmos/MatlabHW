clear;clc;close all;
m1 = 5.9*10^24;
m2 = 2*10^30;
R = 1.5*10^11;
F = gra(m1,m2,R)
%����grativity���Ӻ���
dm1 = 0.1*10^24;
dm2 = 0.2*10^30;
dR = 0.01*10^11;
e = error_1(m1,m2,R,dm1,dm2,dR)
%�������ݵ��Ӻ���

