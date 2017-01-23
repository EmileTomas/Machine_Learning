function result=kNN_classify(index,dataSet,k)
%   Data: 2017-1-19
%   -----------------------------------------
%   Args:
%   index: 
%           The dimensions of target
%   dataSet:   
%           The dimensions of training data set and result
%           Example:
%            [d11 d12 d13 d14 result1;
%             d21 d22 d23 d24 result2;
%             d31 d32 d33 d34 result3;]
%  k:
%           Choose the closest k points to predict the result
dataSetSize=size(dataSet,1);
dataSetIndex=dataSet(:,1:(size(dataSet,2)-1));
dataSetResult=dataSet(:,size(dataSet,2));

diffMat=repmat(index,dataSetSize,1)-dataSetIndex;
sqDiffMat=diffMat.^2;
sqDistances=sum(sqDiffMat,2);
distances=sqDistances.^0.5;
[sortResult,sortedDistIndicies]=sort(distances);
 
closestResult=dataSetResult(sortedDistIndicies);
resultRequency=tabulate(closestResult(1:k));
if size(resultRequency,1)==1
    result=resultRequency(1,1);
else
    [maxResult,maxIndex]=max(resultRequency);
    result=resultRequency(maxIndex(3),1);
end
end


