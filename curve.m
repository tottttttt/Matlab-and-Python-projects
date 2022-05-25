




t = 0:pi/24:8*pi;
X = 3*cos(t);
Y = 3*sin(t);
Z = t;
plot3(X,Y,Z);
xlabel('x');
ylabel('y');
zlabel('z');
hold on
Z = t + 3;
plot3(X,Y,Z);

