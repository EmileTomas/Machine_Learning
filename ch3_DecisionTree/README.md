Code for chapter 3 of *Machine Learning in Action*

## Overview

In this chapter, we will learn about how to use **decision tree** to classify. There is one terminology need to know, [Shannon Entropy](https://en.wikipedia.org/wiki/Entropy_(information_theory)), which describe the degree of disorder of data. Similarly, supposing the the given dataset has n features with classified results. The goal of this algorithm is to build a decision tree, and each level of the tree represents different divergence of one feature. 

To build a decision tree based on the given dataset:

1. find out the best feature (using **shannon Entropy** to judge if it's best) from feature list **FeatList**
2. use it to classify the dataset.
3. delete the feature from **FeatList**
4. jump to 1 till **FeatList** is empty

## File Description

- Util Function:
  - `calcShannonEnt.m` : calculate the Shannon Entropy of the input dataset.
  - `chooseBestFeaturetoSplit.m`: find the feature which brings biggest information gain.
  - `splitDataSet.m`: given a feature **Feat** and one possible value of the feature, pick up those units fits the demand and remove the **Feat** from the picked dataset.
  - `majorityCnt.m`: when there is no feature left for further classification in the procedure of build decision tree, use the most frequent classified result of given dataset to represent the classified result of the node.
  - `createTree.m`: build a decision tree based on given dataset.





