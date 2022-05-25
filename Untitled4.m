x1 = x152(:,1:450);
x2 = x152(:,451:900);
max1 = 0;
max2 = 0;
min1 = 256;
min2 = 256;
for i = 1:600
    for j = 1:450
        if x1(i,j) >= max1
            max1 = x1(i,j);
        elseif  x1(i,j) <= min1
            min1 = x1(i,j);
        end
        if x2(i,j) >= max2
            max2 = x2(i,j);
        elseif  x2(i,j) <= min2
            min1 = x2(i,j);
        end
    end
end

paint = zeros(1:4);
l1 = max1 - min1;
for i = 1:size(x1,1)
    for j = 1:size(x2,2)
        if x1(i,j) < min1 + l1/4
            paint(1,1) = paint(1,1) + 1;
        end
        if x1(i,j) > (min1 + l1/4) && x1(i,j) < (min1 + l1/2)
            paint(1,2) = paint(1,2) + 1;
        end
        if x1(i,j) > (min1 + l1/2) && x1(i,j) < (min1 + l1*0.75)
            paint(1,3) = paint(1,3) + 1;
        end
        if x1(i,j) > (min1 + l1*0.75) && x1(i,j) < max1
            paint(1,4) = paint(1,4) + 1;
        end
    end
end

bar(paint(1,:));


    