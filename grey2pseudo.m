clc;
clear all;
close all;

%gray image
gray_image=imread('C:\Users\meghana\Desktop\DIP project\Fig0110(4)(WashingtonDC Band4).tif');
figure
imshow(gray_image);
title('original grey image')
%convert grey to 3 plane image
gray_tc=cat(3,gray_image,gray_image,gray_image);
figure
imshow(gray_tc);
title('converted grey image')

%RGB channel of grey image
R=gray_tc(:,:,1);
G=gray_tc(:,:,2);
B=gray_tc(:,:,3);

%change particular R G channel only to get yellow
%since yellow (255,255,0)
R(R<20)=255;
G(G<20)=255;

%concatenating three channels
new_image=cat(3,R,G,B);
figure
imshow(new_image)
title('pseudo grey image')