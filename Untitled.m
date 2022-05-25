t = 0:pi/12:8*pi;
x = cos(t);
y = sin(t);
xx = [x;x];
yy = [y;y];

zz = [ones(size(x));3*ones(size(x))];
surf(xx,yy,zz)


