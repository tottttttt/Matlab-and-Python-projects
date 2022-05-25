function LiveCos()

x = (0:pi/12:8*pi);
y = cos(x);
s = struct;
s.x = (0:pi/12:8*pi);
s.y = cos(s.x);
plot (s.x,s.y);
