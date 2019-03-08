function [] = init()

% read data and labels
[tr_d,tr_l,te_d,te_l] = CSV_Extraction();
% train and predict
[acrcy_1,acrcy_2,acrcy_3,acrcy_4,acrcy_5,acrcy_6] = classify(tr_d,tr_l,te_d,te_l);

disp(['The accuracy of prediction based on KNN is: ', num2str(acrcy_1)]);
disp(['The accuracy of prediction based on Random Forest is: ', num2str(acrcy_2)]);
disp(['The accuracy of prediction based on Naive Bayes is: ', num2str(acrcy_3)]);
disp(['The accuracy of prediction based on Random Subspace is: ', num2str(acrcy_4)]);
disp(['The accuracy of prediction based on discriminant analysis classifier is: ', num2str(acrcy_5)]);
disp(['The accuracy of prediction based on SVM is: ', num2str(acrcy_6)]);

end