% Ziyu Zhao HW 7
testpercent=20;
[X,y] = read_data();
[avgcat,avgdog] = average_pet(X,y);
show_image(avgcat,1);
show_image(avgdog,1);
[Xtrain, ytrain, Xtest, ytest] = split_data(X,y,testpercent);

yguess1 = closest_average(Xtrain,ytrain,Xtest);

accuracy1 = calculate_accuracy(ytest,yguess1);

yguess2 = nearest_neighbor(Xtrain,ytrain,Xtest);

accuracy2 = calculate_accuracy(ytest,yguess2);

yguess3 = linear_regression_inv(Xtrain,ytrain,Xtest);

accuracy3 = calculate_accuracy(ytest,yguess3);
% less than 50% if we directly use inv 
% which means the result o prediction is no better than
% random gussing

yguess4 = linear_regression_pinv(Xtrain,ytrain,Xtest);

accuracy4 = calculate_accuracy(ytest,yguess4);

p=pca(Xtrain,'NumComponents',100)';

printimg(p,5,2);

klis=[10 20 50 100];
accuracylis=zeros(4,1);

for i=1:4
    accuracylis(i)=calculate_accuracy(ytest,pca_regression(Xtrain,ytrain,Xtest,klis(i)));
end













