% Fórmula das diferenças regressivas em 2 pontos
% f′(xk) = f(xk)−f(xk−1) / h

% Onde:
%   f′(xk) - aproximação do valor da derivada no ponto de abcissa xk;
%   f(xk) - valor da função no ponto de abcissa atual;
%   f(xk−1) - valor da função na abcissa anterior;
%   h - valor de cada sub-intervalo.

% 24/05/2024  Ricardo Duarte
% 24/05/2024  Pedro Jácome
% 24/05/2024  Guilherme Domingos

function [x, y, dydx] = NDerivacao2PR(f, a, b, h, y)
x = a: h: b;
n = length(x);
if nargin == 5
    y = f(x);
end
dydx = zeros(1, n);
for k = n:-1:2
    dydx(k) = (y(k)-y(k-1)) / h;
end
dydx(1) = (y(2)-y(1)) / h;
end
