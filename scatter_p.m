function [age_1,year_1,node_1,age_0,year_0,node_0] = scatter_p()

test_file = 'F:\Work\sbu\588\project 1\Survival.csv';

init = 251;
endi = 306;

age_clmn = 0;
age_data = [init age_clmn endi age_clmn];
age = csvread(test_file,init,age_clmn,age_data);

year_clmn = 1;
year_data = [init year_clmn endi year_clmn];
year = csvread(test_file,init,year_clmn,year_data);

node_clmn = 2;
node_data = [init node_clmn endi node_clmn];
node = csvread(test_file,init,node_clmn,node_data);

stt_clmn = 3;
stt_data = [init stt_clmn endi stt_clmn];
status = csvread(test_file,init,stt_clmn,stt_data);

lbl = length(status);
disp(['# of people in test set: ', num2str(lbl)]);
lbl_1 = length(find(status==1));
disp(['# of survived people in test set: ', num2str(lbl_1)]);
lbl_0 = length(find(status==0));
disp(['# of dead people in test set: ', num2str(lbl_0)]);

age_1 = [];
year_1 = [];
node_1 = [];
age_0 = [];
year_0 = [];
node_0 = [];

for i=1:lbl
    if status(i)==1
        age_1 = [age_1 age(i)];
        year_1 = [year_1 year(i)];
        node_1 = [node_1 node(i)];
    else
        age_0 = [age_0 age(i)];
        year_0 = [year_0 year(i)];
        node_0 = [node_0 node(i)];
    end
end

end