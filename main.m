clear;clc;close all

a=0;
b=pi;
x=a:(b-a)/10:b;
y=sin(x);

S=fintegrate(x,y,a,b);
%���������һһ��Ӧxy����,���,�յ㣻 ��������ֽ��