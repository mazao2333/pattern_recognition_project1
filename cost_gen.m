function grad = cost_gen(h,X,y,alpha,lamda,n)

m = length(y);
grad = ones(n,1);

for i=1:m
    grad = grad - alpha/*(h(i)-y(i))*X(i,:)'-lamda/m*grad;
end

end