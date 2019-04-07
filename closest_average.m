%This function takes in a training data matrix Xtrain, training
%label vector ytrain and uses them to compute the average cat
%and dog vectors. It also takes in a test data matrix Xtest and 
%produces a vector of label guesses yguess, corresponding to whether
%each row of Xtest is closer to the average cat or average dog.
function yguess = closest_average(Xtrain,ytrain,Xtest)

[avgcat,avgdog] = average_pet(Xtrain,ytrain);

a=sum((Xtest-repmat(avgcat,size(Xtest,1),1)).^2,2).^0.5;
b=sum((Xtest-repmat(avgdog,size(Xtest,1),1)).^2,2).^0.5;
yguess=ones(size(Xtest,1),1);

yguess(a<=b)=-1;

end

%FILL IN CODE