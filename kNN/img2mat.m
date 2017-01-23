function [ outputMat ] = img2mat(fileName)

file=fopen(fileName);
C=textscan(file,'%s');
imageCell=C{1};
outputMat=zeros(1,1024);
for i=1:32
    for j=1:32
        outputMat((i-1)*32+j)=str2double(imageCell{i}(j));
    end
end
fclose(file);
end

