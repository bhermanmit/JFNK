function J = Jfun(x)

J = zeros(2);

J(1,1) = 2;
J(1,2) = 3;
J(2,1) = 8*x(1);
J(2,2) = 18*x(2);

end