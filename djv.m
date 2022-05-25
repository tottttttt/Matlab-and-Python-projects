function res = djv(n,x)
    A = ones(n);
    s = 0;
    for k = 1:n
        A(k,k) = x+k*(-1)^k;
        A(n,k) = A(k,k);
    end   
    for i = 1:n
        for j=1:n
            if ~A(i,j)
                s=s+1;
            end
        end
    end
                
    
    res = n^2-s;
end