fig = figure;
set(fig, 'OuterPosition', [0, 0, 800, 800]);

subplot(NumRow, NumCol, 1);
imshow(uint8(OriginalImage));
title('Original Image');

subplot(NumRow, NumCol, 2);
imshow(uint8(ImageNoise));
title('With Gaussian Noise');

subplot(NumRow, NumCol, 3);
imshow(uint8(ImageNoiseReconstructed));
title('VISU Shrink Hard Thresholding');