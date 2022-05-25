function res = speed(n,m0,v)
a = zeros(1,n);
k = 1;
if mod(n,2) == 0
    a(1,n/2) = m0;
    a(1,(n/2+1)) = m0;
    l = floor(n/2);
    r = floor(n/2)+1;
else
    a(1,floor(n/2)+1) = m0;
    l = floor(n/2)+1;
    r = floor(n/2)+1;
end
while l ~=1
    a(1,(r+1)) = m0+v*k;
    a(1,(l-1)) = m0+v*k;
    r = r + 1;
    l = l - 1;
    k = k + 1;
end

res = a;
end