% Fórmula das diferenças centradas em 3 pontos
% f′(xk) = f(xk+1)−f(xk−1)/ 2*h

% Onde:
%   f’(xk) - aproximação do valor da derivada no ponto de abcissa xk;
%   f(xk+1) - valor da função na próxima abcissa;
%   f(xk-1) - valor da função na abcissa anterior;
%   h - valor de cada subintervalo.

% 24/05/2024  Ricardo Duarte
% 24/05/2024  Pedro Jácome
% 24/05/2024  Guilherme Domingos

function [x, y, dydx] = NDerivacao3PC(f, a, b, h, y)
x = a: h: b;
n = length(x);
if nargin == 5
    y = f(x);
end
dydx = zeros(1, n);
for k = 2:(n-1)
    dydx(k) = (y(k+1)-y(k-1)) / (2*h);
end
dydx(1) = (y(3)-y(1)) / (2*h);
dydx(n) = (y(n)-y(n-2)) / (2*h);
end

