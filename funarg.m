function [res1,res2] = funarg(x,y)

disp('nargin')
disp(nargin)
disp('nargout')
disp(nargout)

if nargin == 1
    y = 1;
    
end

res1 = 2*x*y;
res2 = 2*(x+y);
end