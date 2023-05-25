% NEULERMSED Método de Euler Melhorado para um Sistema de SED/PVI
%
%  20/05/2023 Ricardo Duarte    a2022137878@isec.pt
%  20/05/2023 Rodrigo Gonçalves a2022131122@isec.pt
%%

function [t,u,v] = NEulerMSED(f,g,a,b,n,u0,v0)
    h = (b-a)/n;
    t = a:h:b;
    u = zeros(1,n+1);
    u(1) = u0;
    v = zeros(1,n+1);
    v(1) = v0;

    for i = 1:n
        uFunc = f(t(i),u(i),v(i));
        vFunc = g(t(i),u(i),v(i));
        u(i+1)=u(i)+h*(uFunc+f(t(i+1), u(i)+h*uFunc, v(i)+h*uFunc))/2;
        v(i+1)=v(i)+h*(vFunc+g(t(i+1), u(i)+h*uFunc, v(i)+h*uFunc))/2;
    end

end
