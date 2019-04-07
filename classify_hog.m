% classificaiton using HOG features
train_num=1600;
test_num=400;
hoglen=1764;

xtrain_hog=zeros(train_num,hoglen);
xtest_hog=zeros(test_num,hoglen);

for k=1:train_num
    [xtrain_hog(k,:),~]=extractHOGFeatures(vector2img(Xtrain,k));
end

for k=1:test_num
    [xtest_hog(k,:),~]=extractHOGFeatures(vector2img(Xtest,k));
end

nn_hog=calculate_accuracy(ytest,nearest_neighbor(xtrain_hog,ytrain,xtest_hog));
close_ave_hog=calculate_accuracy(ytest,closest_average(xtrain_hog,ytrain,xtest_hog));
regression_hog=calculate_accuracy(ytest,linear_regression_pinv(xtrain_hog,ytrain,xtest_hog));

klis=10:10:500;
pca_hoglis=zeros(1,length(klis));
for n=1:length(klis)
    pca_hoglis(n)=calculate_accuracy(ytest,pca_regression(xtrain_hog,ytrain,xtest_hog,klis(n)));
end
plot(klis,pcahoglis)











