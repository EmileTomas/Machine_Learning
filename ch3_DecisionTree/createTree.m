function tree = createTree( dataSet,labels)
% labels: the name vector of the features
% tree Structure:
%   bestFeatLabel: the name of feature we choose
%   children:  use container.Map to hold all the children 
dataSetSize=size(dataSet);
dataTable=tabulate(dataSet(:,dataSetSize(2)));

%if there is only one kind of result, stop classify
if(dataTable(1,2)==dataSetSize(1))
    tree=dataTable(1,1);
    return
end
%if there is no feature left, choose the most frequent result as the node
if(dataSetSize(2)==1)  
    tree=majorityCnt(dataSet);
    return 
end

bestFeat=chooseBestFeaturetoSplit(dataSet);
tree.bestFeatLabel=labels(bestFeat);
tree.children=containers.Map;
labels(bestFeat)=[];
uniqueValueTable=tabulate(dataSet(:,bestFeat));
uniqueValueNum=size(uniqueValueTable,1);
for i =1:uniqueValueNum
      sublabel=labels;
      subDataSet=splitDataSet(dataSet,bestFeat, uniqueValueTable(i,1))
      tree.children(num2str(uniqueValueTable(i,1)))=createTree(subDataSet,sublabel);
end
end

