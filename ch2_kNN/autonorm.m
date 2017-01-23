function [ normMat,ranges,minVals] = autonorm( inputMat )
% Note that matlab will repeat vector automatically when handle +, -, .*,
% ./ operations.
% 
max_vector=max(inputMat,[],1);
min_vector=min(inputMat,[],1);

normMat=(inputMat-min_vector)./(max_vector-min_vector);
ranges=max_vector-min_vector;
minVals=min_vector;
end
