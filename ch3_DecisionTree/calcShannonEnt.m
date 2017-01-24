function  shannonEnt = calcShannonEnt( dataSet )
shannonEnt=0;

dataSetColNum=size(dataSet,2);
labelsCount=tabulate(dataSet(:,dataSetColNum));
labelVarityNum=size(labelsCount,1);
for i =1:labelVarityNum
    prob=labelsCount(i,3)/100;
    shannonEnt=shannonEnt-prob*log2(prob);
end
end

