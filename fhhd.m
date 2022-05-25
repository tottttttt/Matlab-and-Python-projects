function fhhd(n)
    A = zeros(n);
    for r = 1:n
        for c = 1:n
            A(r,c) = r + 1i*c;
        end
    end
    disp(A);
end