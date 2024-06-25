% Fórmula das diferenças progressivas em 3 pontos
% f′(xk) = −3f(xk)+4f(xk+1)−f(xk+2) / 2*h

% Onde:
%   f′(xk) - aproximação do valor da derivada no ponto de abcissa xk;
%   f(xk) - valor da função no ponto de abcissa atual;
%   f(xk+1) - valor da função na próxima abcissa;
%   f(xk+2) - valor da função 2 abcissas à frente;
%   h - valor de cada sub-intervalo.

% 24/05/2024  Ricardo Duarte
% 24/05/2024  Pedro Jácome
% 24/05/2024  Guilherme Domingos

function [x, y, dydx] = NDerivacao3PP(f,a,b,h,y)
x = a: h: b;
n = length(x);
if nargin == 5
    y = f(x);
end
dydx = zeros(1, n);
for k = 1: (n-2)
    dydx(k) = (-3*y(k)+4*y(k+1)-y(k+2)) / (2*h);
end
dydx(n-1) = (-3*y(n-2)+4*y(n-1)-y(n)) / (2 * h);
dydx(n) = (-3*y(n-2)+4*y(n-1)-y(n)) / (2 * h);
end
