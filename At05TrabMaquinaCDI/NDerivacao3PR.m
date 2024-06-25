% Fórmula das diferenças regressivas em 3 pontos
% f′(xk) = −3f(xk)+4f(xk+1)−f(xk+2) / 2*h

% Onde:
%   f′(xk) - aproximação do valor da derivada no ponto de abcissa xk;
%   f(xk) - valor da função no ponto de abcissa atual;
%   f(xk-2) - valor da função 2 abcissas atrás;
%   f(xk-1) - valor da função na abcissa anterior;
%   h - valor de cada sub-intervalo.

% 24/05/2024  Ricardo Duarte
% 24/05/2024  Pedro Jácome
% 24/05/2024  Guilherme Domingos

function [x, y, dydx] = NDerivacao3PR(f, a, b, h, y)
x = a: h: b;
n = length(x);
if nargin == 5
    y = f(x);
end
dydx = zeros(1, n);
for k = n:-1:3
    dydx(k) = (y(k-2)-4*y(k-1)+3*y(k)) / (2*h);
end
dydx(2) = (y(1)-4*y(2)+3*y(3)) / (2*h);
dydx(1) = (y(1)-4*y(2)+3*y(3)) / (2*h);
end