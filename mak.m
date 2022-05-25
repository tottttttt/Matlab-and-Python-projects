function res = giag (n)
a = zeros(n);
k=2;
i = 1;
j=2;
r=-1;
a(1,1)=1;
a(n,n)=n*n;
while i+j~=2*n
a(i,j)=k
if i==1 && r==1 && j~=n
r=-1;
j=j+1;
    elseif i==1 && r==1 && j==n
            i=i+1;
            r=-1;
elseif i==1 && r==-1
i = i+1
j = j-1
elseif j==1 && r==-1 && i~=n
i = i+1;
r = 1;
elseif j==1 && r==-1 && i==n
j = j+1;
r = 1;
elseif j==1 && r==1
i=i-1
j=j+1;
elseif i==n && j~=1 && r==-1
j = j+1;
r= 1;
elseif i==n && j~=1 && r==1
i=i-1;
j=j+1;
elseif (j==n) && (i~=1) && (r==1)
i= i+1;
r=-1;
elseif j==n && i~=1 && r==-1
i=i+1;
j=j-1;
elseif i~=n && j~=n && i~=1 && j~=1
if r==1
i=i-1;
j=j+1;
elseif r==-1
i=i+1;
j=j-1;
end
end
k=k+1;
end
res = a;
end
