clc;
a=imread("D:\DIP_prac\cameraman.jpg"); 
a=rgb2gray(a);
a=double(a); 
c=size(a); 
N=c(1);
D0=input('Enter the cut off-frequency: '); 
for u=1:1:c(1)
for v=1:1:c(2)
Dx=((u-N/2)^2 + (v-N/2)^2)^0.5;
D=Dx*Dx;
H(u,v)=exp(-D / (2*D0*D0)); 
end
end 
vv=fft2(a); 
vc=fftshift(vv); 
x=vc.*H; 
X=abs(ifft(x));
figure(1),imshow(uint8(a))
figure(2),mesh(H)
figure(3),imshow(H) 
figure(4),imshow(uint8(X))
