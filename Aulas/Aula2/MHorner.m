function P = MHorner(a,x)
% método de horner
% a = array de coeficientes de x na função
% x = valor para qual queremos calcular
n = length(a);
P = a(end);
% i a variar de n-1, com decremento de 1, até 1
for i=n-1:-1:1
    P = P .* x + a(i);
end
end

