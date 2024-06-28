function y = Heun(f,a,b,n,y0)
h = (b-a)/n;
t=[a zeros(1,n)];
y=[y0 zeros(1,n)];

for i = 1:n+1
    t(i+1)=t(i)+h;
    yprime=y(i)+(h/3)*f(t(i),y(i));
    y(i+1)=y(i)+(h/4)*(f(t(i),y(i))+3*f(t(i)+(2*h/3), y(i)+(2*h/3)*f(t(i)+h/3, yprime)));
end
end