% Translation

clear all;

a=imread('cameraman.tif');
[rows,columns]=size(a);
tx=16;
ty=11;
T1=[rows+16,columns+11];
T1=double(T1/256);
for i=1:rows;
    for j=1:columns;
        T1(i+tx,j+ty)=a(i,j);
        
    end
end
T1=uint8(T1);

subplot(1,2,1);
imshow(a);
title('Original image');
subplot(1,2,2);
imshow(T1);

title('Translated image');