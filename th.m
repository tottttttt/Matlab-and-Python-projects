

phi = (0:0.02*pi:8*pi)';
tetha = (0:pi/12:8*pi);

x = sinh(phi)* cosh(tetha);
y = cosh(phi)* cosh(tetha);
z = ones(size(phi))*sinh(tetha);

surf(x,y,z)

