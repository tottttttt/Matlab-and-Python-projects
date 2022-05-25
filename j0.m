a = {};
tic 
for k = 1:1000000000
    a = {a rand(2)};
end

t1 = toc


