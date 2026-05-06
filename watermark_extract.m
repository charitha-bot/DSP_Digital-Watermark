clc;
clear;
close all;

% Read watermarked image
wm_img = imread('watermarked.png');
wm_img = im2double(wm_img);

% Load original LL band
load('original_LL.mat');

% Apply DWT
[LL_w,~,~,~] = dwt2(wm_img,'haar');

% Extract watermark
alpha = 0.05;
extracted_watermark = (LL_w - LL)/alpha;

% Display
figure;
imshow(extracted_watermark,[]);
title('Extracted Watermark');

% Save
imwrite(extracted_watermark,'extracted_watermark.png');