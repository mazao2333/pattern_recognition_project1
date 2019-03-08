function h = h_gen(X,theta)

h = zeros(size(X));
h = 1 ./ (1 + exp(-X*theta));

end