clear
function [F] = gra(m10,m20,R0)
%���庯��gra
syms m1 m2 R G 
G = sym(6.67*10^-11);
F = sym(G*m1*m2/R^2);
F = subs(F,m1,m10);
F = subs(F,m2,m20)
F = subs(F,R,R0);
%�滻F�и���
end