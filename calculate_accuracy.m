%This function takes in a vector of true labels ytrue
%and a vector of guessed labels yguess and reports back
%the accuracy of the guesses out of 100%.
function accuracy = calculate_accuracy(ytest,yguess)

n = length(ytest);
accuracy = 100/n*sum(yguess == ytest);

end