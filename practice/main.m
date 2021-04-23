data = load('data.txt')
land = data(:,1);
price = data(:,2);
plotdata(land,price)

%hypothesis is theta0 + x* theta1

theta = zeros(2,1);
m = length(price);
X = [ones(m,1),land];

% finding cost function 
cost = costFunction(X,price,theta,m);
fprintf("The cost with theta 0,0 is %.3f \n",cost);

% Running gradient descent
alpha =0.01;
iterations = 1000;
theta = gradientDescent(X,price,theta,alpha,m,iterations);

cost = costFunction(X,price,theta,m);
fprintf("The cost with optimized theta is %.3f \n",cost);

%plotting the best fit
hold on
plot(land,X*theta);

%prediction for 3 Aana
predictedPrice = [1,3]*theta;
    fprintf("3 Aana = %.2f Lakhs\n",predictedPrice);
    
hold on
plot(3,predictedPrice,"rx");
 




