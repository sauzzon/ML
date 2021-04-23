function [theta] = gradientDescent(X,price,theta,alpha,m,iterations)
  
  for i = 1:iterations
    
   theta =( theta -(alpha/m)*(((X*theta) - price)'*X)');
   
  endfor
  
  
end