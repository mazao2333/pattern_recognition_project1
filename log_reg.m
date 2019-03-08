function [] = log_reg()

% read data and labels
[tr_d,tr_l,te_d,te_l] = CSV_Extraction();

% set parameters
[~,n] = size(tr_d);
theta = zeros(n,1);
alpha = 0.01;
lamda = 35;

theta = cost_gen(h_gen(tr_d,theta),tr_d,tr_l,alpha,lamda,n);

he = 1./(1+exp(-te_d*theta));
he = floor(he*2);
accuracy = length(find(he==te_l))/length(te_l)

end