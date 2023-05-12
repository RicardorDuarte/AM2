% RK4 método de Range Kutta para ED/PVI
% y= NRK4(f,a,b,n,y0) Método numérico para resolução com um PVI
% 
%
% INPUT:
% f - função do 2º  membro da  ED
% [a,b] - extremos do intervalo da variável independente t
% n -  número de subintervalos ou iterações do método
% y0 - condição inicial
%
% OUTPUT: 
% y- vetor das soluções aproximadas
%Alunos:
%Rodrigo Simões Gonçalves a2022131122@isec.pt
%Ricardo Rodrigues Duarte a2022137878@isec.pt

function y = NRK4(f, a, b, n, y0)
    h = (b - a) / n;
    t = a:h:b;
    y = zeros(1, n+1);
    y(1) = y0;
    
    for i = 1:n
        k1 = h * f(t(i), y(i));
        k2 = h * f(t(i) + h/2, y(i) + k1/2);
        k3 = h * f(t(i) + h/2, y(i) + k2/2);
        k4 = h * f(t(i) + h, y(i) + k3);
        
        y(i+1) = y(i) + (1/6) * (k1 + 2*k2 + 2*k3 + k4);
    end
end
