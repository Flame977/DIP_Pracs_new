clc; 
clear all;
a=imread("D:\DIP_prac\cameraman.jpg"); 
a=double(a);
//[m,n]=size(a);
subplot(2,2,1); 
imshow(a);
title("Original image");
w1=[-1 -1 -1; 0 0 0; 1 1 1];
w2=[-1 0 1; -1 0 1; -1 0 1];
[row col]=size(a); 
for x=2:row-1
for y=2:col-1
a1(x,y)=[w1(1)*a(x1,y1)+w1(2)*a(x1,y)+w1(3)*a(x1,y+1)+w1(4)*a(x,y1)+w1(5)*a(x,y)+w1(6)*a(x,y+1)+w1(7)*a(x+1,y-1)+w1(8)*a(x+1,y)+w1(9)*a(x+1,y+1)];
a2(x,y)=[w2(1)*a(x1,y1)+w2(2)*a(x1,y)+w2(3)*a(x1,y+1)+w2(4)*a(x,y1)+w2(5)*a(x,y)+w2(6)*a(x,y+1)+w2(7)*a(x+1,y-1)+w2(8)*a(x+1,y)+w2(9)*a(x+1,y+1)];
end 
end
subplot(2,2,2);
imshow(a1);
title("x gradient");
subplot(2,2,3);
imshow(a2);
title("y gradient"); 
output=a1+a2; 
subplot(2,2,4);
imshow(output);
title("Prewitt output");
