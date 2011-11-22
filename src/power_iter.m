function [keignew,phinew] = power_iter(M,F,phi,keig,iters)

% begin power iteration loop
for iter = 1:iters
    
    % Update Flux
    phinew = M\(1/keig*F*phi);
    
    % Update Keff
    keignew = keig*sum((F*phinew).*(F*phinew))/sum((F*phi).*(F*phinew));
    
    % Calculate Difference
    ferr = (norm(phinew-phi));
    kerr = abs(keignew-keig)/keignew;
    
    % Display output
    fprintf('Iter: %d     Err: %d\n',iter,ferr);
    
    % Check Convergence
    if ferr < 1.0e-10 && kerr < 1.0e-10
        break
    else
        phi = phinew;
        keig = keignew;
    end
    
end