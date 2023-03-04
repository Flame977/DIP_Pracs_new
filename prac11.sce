clc;
original1=imread("D:\DIP_prac\cameraman.jpg"); 
original=rgb2gray(original1); 
original=double(original); 
[m,n]=size(original);
fc=3;
N=1;
a=round(m/2); 
b=round(n/2); 
H=zeros(m,n); 
for i=1:m
for j=1:n
d=((i-a)^2+(j-b)^2)^0.5;
H(i,j)=1/(1+((d/fc)^(2*N))); 
end
end 
original_freq=fftshift(fft2(original));
applpf=(original_freq).*H; 
finalout=abs(ifft(applpf));
/* lp1=fft2(original1); 
lp2=fftshift(lp1); 
lp3=lp2.*c; 
lp4=abs(ifft2(lp3));*/
subplot(2,2,1); 
imshow(original1); 
subplot(2,2,2);
imshow(H);
subplot(2,2,3); 
surf(H);
subplot(2,2,4); 
imshow(uint8(finalout));
