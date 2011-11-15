function Fun = jfnk_fun(x)

global M F

% get size of vector
m = length(x);

% preallocate F
Fun = zeros(m,1);

% Evaluate function
Fun(1:m-1) = M*x(1:m-1) - x(m)*F*x(1:m-1);
Fun(m) = -0.5*(x(1:m-1).')*x(1:m-1)+0.5;


end