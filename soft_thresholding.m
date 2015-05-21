function [ Ret ] = soft_thresholding( DecVec, Index, UniversalThreshold )
% Hard Thresholding Function
    Ret = DecVec;
    for i=Index(1,1):Index(size(Index,1),6)
        if abs(Ret(i)) < UniversalThreshold
            Ret(i) = 0;
        else
            Ret(i) = sign(Ret(i))*(Ret(i)-UniversalThreshold);
        end
    end
end

