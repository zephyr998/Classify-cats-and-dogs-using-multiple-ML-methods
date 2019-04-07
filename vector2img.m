function img=vector2img(X,i)

img=reshape(X(i,:),64,64)/255.0;
end