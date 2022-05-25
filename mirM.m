function res = mirM(A,n)
    [s,l] = size(A);
    C = A;
    for i=1:n
        B = [C(1,1) C(1,:) C(1,l); C(:,1) C C(:,l); C(s,1) C(s,:) C(s,l)];
        C = B;
        s = s+2;
        l = l+2;
    end
    disp(B)
    
        
end