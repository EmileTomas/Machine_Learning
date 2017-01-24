function  retDataSet = splitDataSet( dataSet,axis,value)
dataSize=size(dataSet);
retDataSet=[];
for i =1:dataSize(1)
    if abs(dataSet(i,axis)-value)<1.0E-14
        reducedFeatVec=[dataSet(i,1:axis-1),dataSet(i,axis+1:dataSize(2))];
        retDataSet=[retDataSet;reducedFeatVec];
    end
end
end


