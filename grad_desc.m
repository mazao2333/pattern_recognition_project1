function theta = grad_desc(X,y,alpha,iteration)

[~,n] = size(X);
theta = ones(n,1);

for i=1:iteration
    h = h_gen(X,theta);
    error = h - y;
    theta = theta - alpha * X'*error;
end

end