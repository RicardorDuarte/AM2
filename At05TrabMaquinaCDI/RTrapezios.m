%Regra dos Trapézios
% 24/05/2024  Ricardo Duarte
% 24/05/2024  Pedro Jácome
% 24/05/2024  Guilherme Domingos

function T = RTrapezios(f,a,b,n)
h = (b-a)/n;
x=a;
s = 0;
for i=1:n-1
    x=x+h;
    s = s+f(x);
end
T = h/2*(f(a)+2*s+f(b));

