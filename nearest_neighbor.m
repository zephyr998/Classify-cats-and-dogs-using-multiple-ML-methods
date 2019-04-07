%This function takes in a training data matrix Xtrain, training
%label vector ytrain and uses them to compute the average cat
%and dog vectors. It also takes in a test data matrix Xtest and 
%produces a vector of label guesses yguess. Each guess is found
%by searching through Xtrain to find the closest row, and then 
%outputting its label.
function yguess = nearest_neighbor(Xtrain,ytrain,Xtest)

m=size(ytrain);
n=size(Xtest,1);
yguess=ones(n,1);

for i=1:n
    [~,minindex]=min(sum((repmat(Xtest(i,:),[m,1])-Xtrain).^2,2));
    yguess(i)=ytrain(minindex);
end

end

%FILL IN CODE