r_ch = img(:,:,1);
b_ch = img(:,:,3);
g_ch = img(:,:,2);
x_m = zeros(1,256);
g_m = zeros(1,256);
b_m = zeros(1,256);

for i = 1:626
    for j = 1:626
        
          g_m(1,g_ch(i,j)) =  g_m(1,g_ch(i,j)) + 1;
          b_m(1,b_ch(i,j)) =  b_m(1,b_ch(i,j)) + 1;
          x_m(1,r_ch(i,j)) =  x_m(1,r_ch(i,j)) + 1;
    end
end

subplot(2,2,1);
plot (x_m);
subplot(2,2,2);
plot (g_m);
subplot (2,2,3);
plot (b_m);

    