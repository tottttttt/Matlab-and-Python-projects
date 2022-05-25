function res = imtl(n)
    A = ones(n);
    for k= 1:n
        for g=1:n
            if k==g
                A(k,g)=i;
            elseif k>g
                A(k,g)=i^(min(k,g));
            else 
                A(k,g)=i^(max(k,g));
            end
            end
    end
    disp(A)
    count = 0;
    for k = 1:n
        for g= 1:n
            if imag(A(k,g))<0
                count = count +1;
            end
        end
    end
    res=count;
end