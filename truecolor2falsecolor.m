clc;    
clear all;
close all;

%RGB image
rgb_image = imread('C:\Users\meghana\Desktop\DIP project\truecolor.jpg');
figure
imshow(rgb_image);
title('RGB image');

%convert to gray
gray_image = rgb2gray(rgb_image);
figure
imshow(gray_image);
title('gray image');

% Binarize (threshold) the image to find 
% where the average is brighter than some threshold value.
thresholdValue = 180; % Change to whatever value you want.
binaryImage = gray_image > thresholdValue;
% Display the image.
figure
imshow(binaryImage);
title('binary image');

% Extract the individual red, green, and blue color channels.
redChannel = rgb_image(:, :, 1);
greenChannel = rgb_image(:, :, 2);
blueChannel = rgb_image(:, :, 3);

% Make binary pixels red.
redChannel(binaryImage) = 255;
greenChannel(binaryImage) = 0;
blueChannel(binaryImage) = 0;

% Get RGB image again.
newRGB = cat(3, redChannel, greenChannel, blueChannel);
% Display the image.
figure
imshow(newRGB);
title('modified image');

