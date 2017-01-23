clear;
clc;
hoRatio=0.2;
inputFile=fopen('./datingTestSet.txt');
Cell=textscan(inputFile,'%f %f %f %s');
dataSet=cell2mat(Cell(1:3));
%transform labels to number for processing
didntLike=0;
smallDoses=1;
largeDoses=2;
labels=cellfun(@eval,Cell{4});

[dataSet,ranges,minVals]=autonorm(dataSet);
dataSet=[dataSet,labels];
dataSetRows=size(dataSet,1);
dataSetCols=size(dataSet,2);
numTestVecs=dataSetRows*hoRatio;
errorCount=0.0;
for i=1:numTestVecs
    classifierResult=kNN_classify(dataSet(i,1:(dataSetCols-1)), ...
        dataSet((numTestVecs+1):dataSetRows,:), 3);
    fprintf('the classifier came back with: %d, the real answer is: %d\n',[classifierResult,labels(i)]);
    if(abs(classifierResult-labels(i))>0.1^5)
        errorCount=errorCount+1;
    end
end 
fprintf('the total error rate is: %.3f%%\n', 100*errorCount/numTestVecs);

