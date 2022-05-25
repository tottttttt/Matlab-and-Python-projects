function res = paintpoint(n,img)
sz = size(img);

id_x = floor(sz(2)/n);
id_y = floor(sz(1)/n);

for y = 0 : n - 1
    for x = 0 : n - 1
        min_p = 256;
        max_p = 0;
        
        paint = zeros(1,256);
        
        for i = y*id_y : y*id_y+id_y - 1
            for j = x*id_x : x*id_x+id_x - 1
                pixel = img(i+1,j+1); 
                max_p = max([pixel,max_p]);
                 min_p = min([pixel,min_p]);
                 paint(pixel+1)=paint(pixel+1)+1;
            end
        end
        subplot(n,n,y*n+x+1);
        count = zeros(1,4);
        for a = 0:3
            for p = (min_p+floor(max_p - min_p)/4)*a : (min_p+floor(max_p - min_p)/4)*(a + 1) - 1
                count(a+1) = count (a+1) + paint(p+1);
            end
        end
        bar(count);
    end
end
end

                 
        