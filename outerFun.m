function res = outerFun(x)
res = fun2(x) + x;
a = 34;
    function res = infun(x)
        a = 100; 
        res = a* x+2*sin(x);
    end
    disp(a)
res = res + infun(x);
disp(a)
end

function res = fun2(x)
    res = funoffun(x)^2;
end

function res = funoffun(x)
    res = x+3;
end


