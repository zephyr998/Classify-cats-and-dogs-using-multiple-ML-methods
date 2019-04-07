function []=printimg(X,row,column)

figure
for i=1:row*column
    subplot(row,column,i);
    colormap('gray')
    imagesc(reshape(X(i,:),64,64))
end


end