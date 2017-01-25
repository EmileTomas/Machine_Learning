Code for chapter 2 of *Machine Learning in Action*

## Overview

In this chapter, we will learn about the **kNN**(k-nearestNeighbor) classify algorithm. The idea of this algorithm is very simple, supposing every unit we want to classify has n features, and with a given dataset including n features and their classified result for every unit.

To predict the classification of unit **m**:

1. find out the nearest k units of **m** in the dataset in the n-dimension space.
2. find the more frequent classified result in the k units as the predicted classified result of **m**

## File Description

- Util Function:
  - `kNN_classify.m`: classify an input based on training data set
  - `autonorm.m`: normalize different dimensions of data into [0-1]
  - `img2mat.m`: used in digit test, load number file and output a corresponding vector.
- Test Script:
  - `kNN_dating_test.m`: used to test the error rate of a dating example provided by the book author.
  - `kNN_digit_test.m`: used to test the error rate of number handwriting recognition example provided by the book author.
- Data:
  - `datingTestSet(2).txt` data for dating example
  - `digit_Data.zip` data for digit recognition, please unzip it
    - `testDigits`: test set
    - `trainingDigits`: training set

### How to Use

1. cd into the `ch2_kNN/` in matlab
2. unzip `digit_Data.zip` at the same directory
3. run `kNN_dating_test.m` or `kNN_digit_test.m` to use the code.

### Further Work

What maybe helpful is data visualization. It would be helpful if you can commit such code. 