function  PP(a)
for i =1:3
    c_ch = a(:,:,i);
    c_m = zeros(1,256);
    
    l_ch = length(c_ch(1,:));
    h_ch = length(c_ch(:,1)');
    for n = 1:l_ch
        for m = 1:h_ch
            if c_ch(m,n) == 0
                c_ch(m,n) = 1;
            end
            c_m(1,c_ch(m,n)) = c_m(1,c_ch(m,n)) + 1;
        end
    end
    subplot(2,2,i);
    plot(c_m);
end
end