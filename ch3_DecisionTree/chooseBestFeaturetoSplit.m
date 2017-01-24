function  bestFeature= chooseBestFeaturetoSplit( dataSet )
featureNum=size(dataSet,2)-1;   %Don't include label
baseEntropy=calcShannonEnt(dataSet);
bestInfoGain=0.0;   bestFeature=-1;
for i =1:featureNum
    featureVarity=tabulate(dataSet(:,i));
    varitySize=size(featureVarity,1);
    newEntropy=0.0;
    
    for j=1:varitySize
        subDataSet=splitDataSet(dataSet,i,featureVarity(j,1));
        prob=size(subDataSet,1)/size(dataSet,1);
        newEntropy=newEntropy+prob*calcShannonEnt(subDataSet);
    end
    infoGain=baseEntropy-newEntropy;
    
    if(infoGain>bestInfoGain)
        bestInfoGain=infoGain;
        bestFeature=i;
    end
end
end

