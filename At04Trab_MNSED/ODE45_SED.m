function [t,u,v] = ODE45_SED(f,g,a,b,n,u0,v0)

%função criada por: 
% Carlos Daniel Dias Bandeira 
% Jõao Gabriel Carvalho Martins

h = (b-a)/n;
t = a:h:b;
u0v0 = [u0; v0];

fg = @(t,Y) [f(t, Y(1), Y(2)); g(t, Y(1), Y(2))];

[~,uv] = ode45(fg,y,u0v0);
u = uv(:,1).';
v = uv(:,2).';

end

