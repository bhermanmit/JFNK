function Ay = matvecmult_exact(x,y)

global M F

% get size
m = size(M,1);

% preallocate matrix vector product
Ay = zeros(m+1,1);

% compute matrix vector product
Ay(1:m) = (M - x(m+1)*F)*y(1:m) - F*x(1:m)*y(m+1);
Ay(m+1) = -x(1:m).'*y(1:m);

end