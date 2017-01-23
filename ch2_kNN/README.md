Code for chapter 2 of *Machine Learning in Action*

###File Description

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