function res = bl(n)
   a = (1:n)';
   b = ones(1,n);
   c = (a*b)';
   k = n;
   for i = 2:n
       while k > 1
           c(i,k)= c;
           
       end   
   end
   
end