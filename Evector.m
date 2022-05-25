function Evector()
    a = rand(4);    
    [V, D] = eig(a);
    self = diag(D);
    disp(V);
    disp(D);
    disp(self);
%     for i = 1:4
%        
%         if(self(i)*V(:,i) - a*V(:,i)  < 10e-8)
%            disp("1")
%        else
%            disp("0")
%        end 
%     end

    
    
end
