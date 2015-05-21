function [ ThresholdedVect ] = hard_thresholding( Vector, Threshold )
% Hard Thresholding Function
    ThresholdedVect = Vector;
    for i=1:length(Vector)
        if abs(ThresholdedVect(i)) < Threshold
            ThresholdedVect(i) = 0;
        end
    end
end

