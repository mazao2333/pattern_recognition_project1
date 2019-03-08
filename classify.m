function [accuracy_1,accuracy_2,accuracy_3,accuracy_4,accuracy_5,accuracy_6] = classify(train_data,train_label,test_data,test_label) 

% K近邻分类器 KNN
mdl = ClassificationKNN.fit(train_data,train_label,'NumNeighbors',1);
predict_label_1 = predict(mdl, test_data);
accuracy_1 = length(find(predict_label_1 == test_label))/length(test_label);

% 随机森林分类器 Random Forest
nTree = 5;
B = TreeBagger(nTree,train_data,train_label);
predict_label_2 = predict(B,test_data);
counter_2 = 0;
for i=1:numel(predict_label_2)
    if str2num(predict_label_2{i,1})==test_label(i) %#ok<ST2NM>
        counter_2 = counter_2 + 1;
    end
end
accuracy_2 = counter_2 / numel(predict_label_2);

% 朴素贝叶斯 Naive Bayes
% nb = NaiveBayes.fit(train_data, train_label);
% predict_label_3 = predict(nb, test_data);
% accuracy_3 = length(find(predict_label_3 == test_label))/length(test_label);
accuracy_3 = 0;

% 集成学习方法 Ensembles for Boosting, Bagging, or Random Subspace
ens = fitensemble(train_data,train_label,'AdaBoostM1' ,100,'tree','type','classification');
predict_label_4 = predict(ens, test_data);
accuracy_4 = length(find(predict_label_4 == test_label))/length(test_label);

% 鉴别分析分类器 discriminant analysis classifier
obj = ClassificationDiscriminant.fit(train_data, train_label);
predict_label_5 = predict(obj, test_data);
accuracy_5 = length(find(predict_label_5 == test_label))/length(test_label);

% 支持向量机 Support Vector Machine, SVM
% SVMModel = fitcsvm(train_data, train_label,'linear',);
% predict_label_6 = predict(SVMModel,);
accuracy_6 = 0;

end