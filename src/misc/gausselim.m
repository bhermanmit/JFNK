function x = gausselim(A,b,opt)

% This function performs Gaussian Elimination to solve Ax=b
% The user has the option of no, half or full pivoting using opt

% variables     meaning
% ---------     -------
% A             coefficient matrix
% b             right hand side vector
% col_ptr       pointer for col swapping
% i             inner row iteration counter
% j             column iteration counter
% k             outer row iteration counter
% m             ratio for pivot point
% opt           options for no,half,full pivoting
% row_ptr       pointer for row swapping
% x             solution vector

% get dimensions
n = length(b);

% set pointer vectors
row_ptr = linspace(1,n,n);
col_ptr = linspace(1,n,n);

% normalize coefficient matrix if partial pivoting
if strcmp(opt,'part')
    [A,b] = normalize(A,b,n);
end

% FORWARD ELIMINATION
% begin outer loop around rows
for k = 1:n
    
    % perform partial pivoting
    if strcmp(opt,'part')
        row_ptr = part_pivot(A,row_ptr,k,n);
        
    % perform full pivoting
    elseif strcmp(opt,'full')
        [row_ptr,col_ptr] = full_pivot(A,row_ptr,col_ptr,k,n);
    end
    
    % begin inner loop around rows
    for i = k+1:n
        
        % get ratio of each row to pivot
        m = A(row_ptr(i),col_ptr(k))/A(row_ptr(k),col_ptr(k));
        
        % begin inner loop around cols and subtract
        for j = 1:n
            A(row_ptr(i),col_ptr(j)) = A(row_ptr(i),col_ptr(j)) - ...
                                       m*A(row_ptr(k),col_ptr(j));
        end
        
        % perform subtraction on right hand side
        b(row_ptr(i)) = b(row_ptr(i)) - m*b(row_ptr(k));
        
    end
    
end

% BACKWARD SUBSTITUTION
% begin backward loop
for i = n:-1:1

    % reset sum
    sum = 0.0;
    
    % begin loop for accumulating sum
    for j = i+1:n
        sum = sum + A(row_ptr(i),col_ptr(j))*x(col_ptr(j));
    end
    
    % compute x
    x(col_ptr(i)) = (b(row_ptr(i)) - sum)/A(row_ptr(i),col_ptr(i));
    
end

end

function [A,b] = normalize(A,b,n)

% this function performs the normalization for half pivoting
% uses infinity - norm

% variable     meaning
% --------     -------
% A            coefficient matrix
% b            right hand side vector
% c            normalization factor
% i            row iteration counter
% n            dimension of matrix

for i = 1:n
    
    % normalize rown
    c = norm(A(i,:),Inf);
    A(i,:) = A(i,:)/c;
    b(i) = b(i)/c;
    
end

end

function row_ptr = part_pivot(A,row_ptr,k,n)

% this function performs the partial pivoting by exchanging row
% using the row_ptr indexing vector

% variable     meaning
% --------     -------
% A            coefficient matrix
% k            current pivot element
% loc          location where maximum value is
% maxval       maximum value
% n            dimension of matrix
% row_ptr      row pointer indexing vector
% tmp          temporary var for swapping
% val          temp value for comparing to max

% loop around rows
for i = k:n
    
    % get value
    val = A(row_ptr(i),k);
    
    % check for maximum and record value and row
    if (i == k) || (abs(val) > maxval)
        maxval = abs(val);
        loc = i;
    end
    
end

% swap in pointer
tmp = row_ptr(k);
row_ptr(k) = row_ptr(loc);
row_ptr(loc) = tmp;

end

function [row_ptr,col_ptr] = full_pivot(A,row_ptr,col_ptr,k,n)

% this function performs the full pivoting by exchanging rows and cols
% using the row_ptr and col_prt indexing vectors

% variable     meaning
% --------     -------
% A            coefficient matrix
% col_ptr      col pointer indexing vector
% i            row iteration counter
% iloc         location of max row
% j            col iteration counter
% j            location of max col
% k            current pivot element
% maxval       maximum value
% n            dimension of matrix
% row_ptr      row pointer indexing vector
% tmp          temporary var for swapping
% val          temp value for comparing to max

% loop around rows
for i = k:n
    
    for j = k:n
        
        % get value
        val = A(row_ptr(i),col_ptr(j));
        
        % check for maximum and record value and row
        if (i == k && j == k) || (abs(val) > maxval)
            maxval = abs(val);
            iloc = i;
            jloc = j;
        end
        
    end
    
end

% swap in row pointer
tmp = row_ptr(k);
row_ptr(k) = row_ptr(iloc);
row_ptr(iloc) = tmp;

% swap in col pointer
tmp = col_ptr(k);
col_ptr(k) = col_ptr(jloc);
col_ptr(jloc) = tmp;

end