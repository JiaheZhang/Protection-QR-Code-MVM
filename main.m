clc;
clear;
close all;

block_size1=5;
block_size2=9;

code=im2double(rgb2gray(imread('img/code.png')));
code=code.*(code>0.8);

mask1=generateMask( [size(code,1),size(code,2)], block_size1,1);

img=im2double(rgb2gray(imread('img/jerry.png')));
img=imresize(img,size(code));
mask2=double(imbinarize(img,'global'));

secretImg = encoder(code,mask1,mask2);

imwrite(secretImg,'img/result.png');

figure,imshow(secretImg),title('encoded image');

decode_image = decoder(secretImg);

figure,imshow(decode_image),title('decoded image');

