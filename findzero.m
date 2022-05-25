function res = findzero(f,a,b,epsi)
%findzero - finds zero of fuction f on [a,b]
    l = a;
    r = b + epsi;
while r - l > epsi
    m = (r + l)/2;
    if f(m) > 0
        r = m;
    else 
        l = m;
    end
end
res = l;
end