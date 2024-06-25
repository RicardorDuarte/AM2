% Fórmula da 2ª Derivada
% f′′(xk) = f(xk+1)−2f(xk)+f(xk−1) / h^2

% Onde:
%   f’’(xk) - aproximação do valor da 2ª derivada no ponto de abcissa xk;
%   f(xk+1) - valor da função na próxima abcissa;
%   f(xk) - valor da função no ponto de abcissa atual;
%   f(xk-1) - valor da função na abcissa anterior;
%   h - valor de cada subintervalo.

% 24/05/2024  Ricardo Duarte
% 24/05/2024  Pedro Jácome
% 24/05/2024  Guilherme Domingos

function [x, y, dydx] = NDerivacao2D(f, a, b, h, y)
x = a: h: b;
n = length(x);
if nargin == 5
    y = f(x);
end
dydx = zeros(1, n);
for i = 2: (n-1)
    dydx(i) = (y(i+1)-2*y(i)+y(i-1)) / h^2;
end
dydx(1) = (y(3)-2*y(2)+y(1)) / h^2;
dydx(n) = (y(n)-2*y(n-1)+y(n-2)) / h^2;
end

