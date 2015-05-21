function [ ThresholdedDecCoef ] = visu_shrink( DecCoef, ImageSize )
% VISU Shrink Algorithm
%   Based on paper
%   Arun Dixit, Poonam Sharma,
%   A Comparative Study of Wavelet Thresholding for Image Denoising
%   I.J. Image, Graphics and Signal Processing, 2014, 12, 39-46

    W_y = DecCoef.H{1};
    Sigma_nHat = median(abs(W_y)) / 0.6745;
    UniversalThreshold = Sigma_nHat*sqrt(2*log(ImageSize(1)*ImageSize(2)));
    
    
    ThresholdedDecCoef.A = DecCoef.A;
    Level = length(DecCoef.H);
    for i=1:Level
        ThresholdedDecCoef.H{i} = hard_thresholding(DecCoef.H{i}, UniversalThreshold);
        ThresholdedDecCoef.V{i} = hard_thresholding(DecCoef.V{i}, UniversalThreshold);
        ThresholdedDecCoef.D{i} = hard_thresholding(DecCoef.D{i}, UniversalThreshold);
    end
end