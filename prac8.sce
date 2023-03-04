clc;
a1=imread("D:\DIP_prac\cameraman.jpg"); 
a=double(a1);
[m,n]=size(a);
w=[-1 -1 -1;1 1 1;1 1 1];
for i=2:m-1
for j=2:n-1
b(i,j)=[w(1)*a(i-1,j+1)+w(2)*a(i,j+1)+w(3)*a(i+1,j+1)+w(4)*a(i-1,j)+w(5)*a(i,j)+w(6)*a(i+1,j)+w(7)*a(i-1,j-1)+w(8)*a(i,j1)+w(9)*a(i+ 1,j-1)]/9; 
end
end 
c=uint8(b);
figure(1); 
imshow(c); 
title("low pass image")
