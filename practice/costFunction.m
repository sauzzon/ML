function [cost] = costFunction(X,price,theta,m)
  sqError = sum((X*theta-price).^2);
  cost = 1/(2*m)*sqError;
end