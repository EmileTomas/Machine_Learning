clear;
clc;
fprintf('Loading training data...\n');
fileList=dir('trainingDigits\*.txt');
fileNum=size(fileList,1);
dataSet=zeros(fileNum,1025);    %1024+label
for i =1:fileNum
    fileName=fileList(i).name;
    fprintf('Loading file %s, %d/%d\n',fileName,i,fileNum);
    imgVector=img2mat(strcat('trainingDigits\',fileName));
    dataSet(i,:)=[imgVector,str2double(fileName(1))]; %add label to vector
end
fprintf('Loading finished\n');

%Data Testing
fprintf('Testing...\n');
fileList=dir('testDigits\*.txt');
fileNum=size(fileList,1);
errorCount=0;
for i=1:fileNum
    fileName=fileList(i).name;
    rightAns=str2double(fileName(1));
    testVector=img2mat(strcat('testDigits\',fileName));
    result=kNN_classify(testVector,dataSet,3);
    fprintf('The classifier came back with: %d, the real answer is: %d(%d/%d)\n',...
        result,rightAns,i,fileNum);
    if(abs(result-rightAns)>=0.1^5)
        errorCount=errorCount+1;
    end
end
fprintf('The total error rate is: %.3f%%\n',100*errorCount/fileNum);

        
   
        