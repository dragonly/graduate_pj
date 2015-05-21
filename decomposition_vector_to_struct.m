function [ DecCoef ] = decomposition_vector_to_struct( DecVec, BookMat )
% Convert wavelet decomposition vector produced by wavedec2 to a more
% friendly structure
%   Referencing `doc wavedec2`
    Level = length(BookMat) - 2;
    DecCoef.H = cell(1, Level);
    DecCoef.V = cell(1, Level);
    DecCoef.D = cell(1, Level);
    
    Cursor = BookMat(1,1)*BookMat(1,2);
    DecCoef.A = DecVec(1:Cursor);
    for i=1:Level
        NextCursor = Cursor + BookMat(i+1,1)*BookMat(i+1,2);
        DecCoef.H{Level-i+1} = DecVec(Cursor+1:NextCursor);
        Cursor = NextCursor;
        NextCursor = Cursor + BookMat(i+1,1)*BookMat(i+1,2);
        DecCoef.V{Level-i+1} = DecVec(Cursor+1:NextCursor);
        Cursor = NextCursor;
        NextCursor = Cursor + BookMat(i+1,1)*BookMat(i+1,2);
        DecCoef.D{Level-i+1} = DecVec(Cursor+1:NextCursor);
        Cursor = NextCursor;
    end
end