clc;
clear;
close all;

% Read images
cover = imread('cover.png');
watermark = imread('watermark.png');

% Convert to grayscale if needed
if size(cover,3)==3
    cover = rgb2gray(cover);
end
if size(watermark,3)==3
    watermark = rgb2gray(watermark);
end

% Convert to double
cover = im2double(cover);
watermark = im2double(watermark);

% Resize watermark
watermark = imresize(watermark,[size(cover,1)/2 size(cover,2)/2]);

% Apply DWT
[LL,LH,HL,HH] = dwt2(cover,'haar');

% Save original LL band
save('original_LL.mat','LL');

% Embed watermark
alpha = 0.05;
LL_w = LL + alpha * watermark;

% Inverse DWT
watermarked_image = idwt2(LL_w,LH,HL,HH,'haar');

% Display
figure;
subplot(1,3,1), imshow(cover), title('Original');
subplot(1,3,2), imshow(watermark), title('Watermark');
subplot(1,3,3), imshow(watermarked_image), title('Watermarked');

% Save
imwrite(watermarked_image,'watermarked.png');