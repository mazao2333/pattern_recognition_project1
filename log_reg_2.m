function [] = log_reg_2()

% read data and labels
[tr_d,tr_l,te_d,te_l] = CSV_Extraction();
tr_d = [ones(length(tr_l),1) tr_d];
te_d = [ones(length(te_l),1) te_d];

% set parameters
alpha = 0.0001;
iteration = 10000;

% get parameter
theta = grad_desc(tr_d,tr_l,alpha,iteration)

% show result
he = 1./(1+exp(-te_d*theta));
he = floor(he*2);

accuracy = length(find(he==te_l))/length(te_l);
disp(['Accuracy = ', num2str(accuracy)]);

[age_1,year_1,node_1,age_0,year_0,node_0] = scatter_p();
[x,y]=meshgrid(0:1:80);
z = (theta(1)-theta(2)*x-theta(3)*y)/theta(4);

figure;
scatter3(age_1,year_1,node_1,'o');
hold on;
scatter3(age_0,year_0,node_0,'x');
surf(x,y,z);
hold off;

end