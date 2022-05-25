f = @(x,y,z) x.*y.*z-sin(x)-sin(y)-sin(z);
interval = [-1 1 -1 1 -1 1];
fimplicit3(f,interval)