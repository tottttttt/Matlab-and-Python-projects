function Hyperboloid(a,b,c)
if(nargin==0)
    a=1;b=1;c=1;
end
scale=[0:0.1:1];
X=[(2*a).*scale - a];
scale = real((1+X.^2./(a^2)).^0.5);
Y=[cos(0:pi/12:2*pi)]'*(b.*scale);
Z=[sin(0:pi/12:2*pi)]'*(c.*scale);
X=ones(1,size(Y,1))'*X;
surf(X,Y,Z);
axis equal
hold on
len=floor(length(scale)/2)+1;
lines(a,b,c,Y(:,len),Z(:,len));
hold off
end

function lines(a,b,c,Y,Z)
xlabel('x');ylabel('y');zlabel('z');
scale=[-1:0.05:1];
len1 = length(Y); len2=length(scale);
X=zeros(1,len2);Y1=zeros(1,len2);Z1=zeros(1,len2);
Y2=zeros(1,len2);Z2=zeros(1,len2);
for k=1:len1
    for m=1:len2
        t=scale(m);
        X(m)=a*t;
        Y1(m)=Y(k)+b*Z(k)/c*t;
        Z1(m)=Z(k)-c*Y(k)/b*t;
        Y2(m)=Y(k)-b*Z(k)/b*t;
        Z2(m)=Z(k)+c*Y(k)/b*t;
    end
    plot3(X,Y1,Z1,'r');
    plot3(X,Y2,Z2,'b');
end
end