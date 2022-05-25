function matrix_d(n)
    
%     v = ones(1,n);
    b = -2*diag(ones(1,n))+diag(ones(1,1),n)+diag(ones(1,1),-n);
%     disp(v);
    disp(b);
end