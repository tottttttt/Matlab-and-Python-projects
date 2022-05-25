wh = fopen('C:\Users\User\Downloads\weather.txt','r');
nw = fopen('newW.txt', 'w');
if wh ~= -1
    
    while ~feof(wh)
        b1 = fread(wh);
        fwrite(nw, double2single, b1);
    end
end

