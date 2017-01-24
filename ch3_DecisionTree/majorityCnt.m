function  mostFrequentLabel= majorityCnt( classList )
%Output the most frequent label if all the labels has been used but there
%are still several different varities of labels. 
table=tabulate(classList);
[result, index]=sort(table(:,3),'descend');
mostFrequentLabel=table(index(1),1);
end

