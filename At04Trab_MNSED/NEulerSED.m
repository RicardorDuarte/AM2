function [t,u,v] = NEulerSED(f,g,a,b,n,u0,v0)
%input:
%   f, g - funções do 2º membro das ED
%   [a,b] - intervalo da variável t
%   n - número de iterações
%   u0, v0 - confições uniciais t=a => u = u0 || v = v0
%
%output:
%   [t,u,v] - vetor de soluções
%   
%   Ricardo Rodrigues Duarte - 2022137878
%   Pedro Miguel Martins Jácome - 2022137038
%   Guilherme de Pingo Domingos - 2022136668

h = (b-a)/n;
t = a:h:b;
u = zeros(1,n+1);
v = zeros(1,n+1);
u(1) = u0;
v(1) = v0;
for i = 1:n
    u(i+1) = u(i)+h*f(t(i),u(i),v(i));
    v(i+1) = v(i)+h*g(t(i),u(i),v(i));
end
end

