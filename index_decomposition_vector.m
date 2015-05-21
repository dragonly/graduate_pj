function [ Ret ] = index_decomposition_vector( BookMat )
% Summary of this function goes here
%   Detailed explanation goes here
    IndexEnd = length(BookMat) - 1;
    Cursor = BookMat(1,1)*BookMat(1,2) + 1;
    Ret = zeros(IndexEnd-1, 6);
    for i=2:IndexEnd
        Size = BookMat(i,1) * BookMat(i,2);
        Ret(i-1,:) = [Cursor, Cursor+Size-1, ...
                      Cursor+Size, Cursor+2*Size-1, ...
                      Cursor+2*Size, Cursor+3*Size-1];
        Cursor = Cursor + 3*Size;
    end
end

