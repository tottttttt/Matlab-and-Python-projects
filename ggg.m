clear, clc
 
syms x
y1 = 4-x; % первая прямая
y2 = x+1; % вторая прямая
a = double(solve(y1)) % вершина первого конуса
b = double(solve(y2)) % вершина второго конуса
c = double(solve(y1-y2)) % координата пересечения конусов
S1 = 2*pi*int(y1*sqrt(1+(diff(y1))^2),b,c); % площадь поверхности первого конуса
S2 = 2*pi*int(y2*sqrt(1+(diff(y2))^2),c,a); % площадь поверхности второго конуса
S = double(S1+S2) % площадь поверхности фигуры
V1 = pi*int(y1^2,b,c); % объем первого конуса
V2 = pi*int(y2^2,c,a); % объем второго конуса
V = double(V1+V2) % объем фигуры
 
% рисование
a = -1; 
b = 2;
c = 3;
u1 = linspace(c,a+1,10)';
u2 = linspace(b-1,c,10)';
v = [0:10:360]; % вращение
 
X1 = u1*ones(size(v));
Y1 = (4-u1)*sind(v);
Z1 = (4-u1)*cosd(v);
 
X2 = u2*ones(size(v));
Y2 = (u2+1)*sind(v);
Z2 = (u2+1)*cosd(v);
 
hold on
surf(X1,Y1,Z1,'FaceAlpha',0.5) % поверхность вращения первой ф-ции
surf(X2,Y2,Z2,'FaceAlpha',0.5) % поверхность вращения второй ф-ции
% рисуем по кусочкам фигуру
x = c:0.01:a;
y = 4-x;
plot(x,y,x,-y)
x = b:0.01:c;
y = x+1;
plot(x,y,x,-y)
grid on
shading flat
xlabel('X')
ylabel('Y')
zlabel('Z')
view(-160,20) %красивая точка обзора