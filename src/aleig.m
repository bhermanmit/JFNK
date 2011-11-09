function [iter,eval,evect]=aleig(a,b,eps)
% find the fondamental eigenvalue and corresponding eigenvector of
% equation (a-eval*b)*evect=0 using the inverse power method.
% function [iter,eval,evect]=aleig(a,b,eps)
% (c) 2005 Alain Hebert, Ecole Polytechnique de Montreal
   try
      ai=inv(a) ;
   catch
      error('singular matrix')
   end
   % perform power iterations.
   ai=ai*b ;
   iter=0 ; eval=0. ;
   n=size(a,2) ; evect=ones(n,1) ;
   while true
      iter=iter+1 ;
      if iter > 5000, error('unable to converge(1).'), end
      gar=ai*evect ;
      s1=sum((a*evect).*(b*evect)) ; s2=sum((b*evect).*(b*evect)) ;
      zz=abs(eval-s1/s2) ;
      eval=s1/s2 ;
      err1=max(abs(gar*eval)) ; err2=max(abs(gar*eval-evect)) ;
      evect=gar*eval ;
      if zz <= eps && err2 <= err1*eps
         break
      elseif iter == 1
         test=zz ;
      elseif iter >= 10 && zz > test
         error('unable to converge(2)')
      end
   end
end
