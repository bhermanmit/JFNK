function F = Ffun(x)

F = zeros(2,1);

F(1) = 2*x(1) + 3*x(2) - 12;
F(2) = 4*x(1)^2 + 9*x(2)^2 - 144;

end