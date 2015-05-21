function [ DecVec ] = struct_to_decomposition_vector( DecCoef )
% Convert structrue presented wavelet coefficients to original
% decomposition vector produced by wavedec2
    DecVec = DecCoef.A;
    Level = length(DecCoef.D);
    for i=Level:-1:1
        DecVec = cat(2, DecVec, DecCoef.H{i});
        DecVec = cat(2, DecVec, DecCoef.V{i});
        DecVec = cat(2, DecVec, DecCoef.D{i});
    end
end

