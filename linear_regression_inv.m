%This function takes in a training data matrix Xtrain, training
%label vector ytrain and uses them to compute ordinary-least-squares
%vector b. It also takes in a test data matrix Xtest and 
%produces a vector of label guesses yguess, corresponding to the sign
%of the linear prediction.
function yguess = linear_regression_inv(Xtrain,ytrain,Xtest)

b=inv(Xtrain'*Xtrain)*Xtrain'*ytrain;

yguess=sign(Xtest*b);

end

%FILL IN CODE