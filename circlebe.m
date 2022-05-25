r1=5; r2=1;
T=[0:pi/24:2*pi]; 
X=cos(T).*r1; 
Y=sin(T).*r1;

sz = length(T);
M = [];

plot(X,Y);
hold on;
axis equal;
X=(r1+r2) + cos(T); 
Y=sin(T);
circle2 = plot(X,Y);
circle2.XDataSource = 'X';
circle2.YDataSource = 'Y';
xlim([-r1-2*r2, r1+2*r2]);
ylim([-r1-2*r2, r1+2*r2]);
for k = 1:sz
    t=T(k);
    x=cos(t)*(r1+r2);
    y=sin(t)*(r1+r2);
    X=x+cos(T); 
    Y=y+sin(T);
    refreshdata;
    M = getframe();
end
movie(M);
hold off