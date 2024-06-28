function [t,y] = ODE45 (f,a,b,n,y0)
    h = (b-a)/n;
    t = a:h:b;
    [~,y] = ode45(f,t,y0);
    y = y.';
end
