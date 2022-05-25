function Projection()
subplot(2,2,1);
h=surf(peaks);
title('Original');
xlabel('x');ylabel('y');zlabel('z');
subplot(2,2,2);
new_h2=copyobj(h,gca);
title('OXY');
view(0,90);
subplot(2,2,3);
new_h3=copyobj(h,gca);
title('OXZ');
view(0,0);
subplot(2,2,4);
new_h4=copyobj(h,gca);
title('OYZ');
view(-90,0);
end