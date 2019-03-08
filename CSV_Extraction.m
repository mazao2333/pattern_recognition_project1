function [train_data,train_label,test_data,test_label] = CSV_Extraction() 

% file path of te training and testing data set
train_file = 'F:\Work\sbu\588\project 1\Survival.csv';
% test_file = 'F:\Work\sbu\588\project 1\horse\horse_test_data.csv';
test_file = train_file;

% read training data
R_train_data = 1;
C_train_data = 0;
RE_train_data = 250;
CE_train_data = 2;
RNG_train_data = [R_train_data C_train_data RE_train_data CE_train_data];
train_data = csvread(train_file,R_train_data,C_train_data,RNG_train_data);

% read training label
R_train_label = 1;
C_train_label = 3;
RE_train_label = 250;
CE_train_label = 3;
RNG_train_label = [R_train_label C_train_label RE_train_label CE_train_label];
train_label = csvread(train_file,R_train_label,C_train_label,RNG_train_label);

% read test data
R_test_data = 251;
C_test_data = 0;
RE_test_data = 306;
CE_test_data = 2;
RNG_test_data = [R_test_data C_test_data RE_test_data CE_test_data];
test_data = csvread(test_file,R_test_data,C_test_data,RNG_test_data);

% read testing label
R_test_label = 251;
C_test_label = 3;
RE_test_label = 306;
CE_test_label = 3;
RNG_test_label = [R_test_label C_test_label RE_test_label CE_test_label];
test_label = csvread(test_file,R_test_label,C_test_label,RNG_test_label);

end