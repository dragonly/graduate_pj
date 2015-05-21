clear; clc;

OriginalImage = double(imread('cameraman.tif'));
% ImageNoise = imnoise(OriginalImage, 'gaussian', 0, 0.005);
Sigma_n = 15;
ImageNoise = OriginalImage + Sigma_n*randn(size(OriginalImage));

% Wavelet: IN
% DecVec: OUT
% BookMat: OUT
Wavelet = 'sym8';
DecompositionLevel = 4;

wavelet_decomposition;

wavelet_coefficient_process;

% ImageReconstructed OUT
wavelet_reconstruction;

% NumRow: IN
% NumCol: IN
NumRow = 2;
NumCol = 2;
show_image;