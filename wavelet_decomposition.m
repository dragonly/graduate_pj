[DecVecNoise, BookMatNoise] = wavedec2(ImageNoise, DecompositionLevel, Wavelet);
DecCoefNoise = decomposition_vector_to_struct(DecVecNoise, BookMatNoise);