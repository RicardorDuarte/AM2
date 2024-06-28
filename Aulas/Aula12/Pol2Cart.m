function [x,y] = Pol2Cart(rho,theta)
if(rho >= 0)
    x = rho*cos(theta);
    y = rho*sin(theta);
end
end

