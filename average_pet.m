%This function takes in a data matrix X and a label
%vector y and outputs the average cat image and average dog image.

function [avgcat,avgdog] = average_pet(X,y)

avgcat=mean(X(y==-1,:));
avgdog=mean(X(y==1,:));

end

%FILL IN CODE