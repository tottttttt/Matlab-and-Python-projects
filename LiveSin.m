function M= LiveSin()
r=1;
X=(0:pi/12:4*pi); Y=sin(X);
sz=length(0:0.1:5);
M(sz) = struct('cdata',[],'colormap',[]);
for t=0:0.1:10
    x=t/5*4*pi;
    y=sin(x);
    n=[-cos(x),1]./sqrt(cos(x)^2+1);
    x = x+n(1)*r; y = y+n(2)*r;
    phi=(0:pi/12:2*pi);
    CX=x+cos(phi)*r; CY=y+sin(phi)*r;
    plot(X,Y,CX,CY);
    xlim([0,4*pi]); ylim([-1-r,1+r]);
    axis equal;
    M(fix(t*10+1))=getframe();
end
movie(M);
end