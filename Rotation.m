 function Y = Rotation(X, a,b,c)
alpha = sym('alpha');
Mx = sym([1,0,0;0,cos(alpha),-sin(alpha);0,sin(alpha),cos(alpha)]);
My = sym([cos(alpha),0,sin(alpha);0,1,0;-sin(alpha),0,cos(alpha)]);
Mz = sym([cos(alpha),-sin(alpha),0;sin(alpha),cos(alpha),0;0,0,1]);
Y = subs(Mz,alpha,c)*subs(My,alpha,b)*subs(Mx,alpha,a)*X;
end