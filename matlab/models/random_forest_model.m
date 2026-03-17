
% random_forest_model.m

load('../../data/processed_dataset.mat')

model = TreeBagger(100,X,y,'Method','regression');

pred = predict(model,X);

rmse = sqrt(mean((pred - y).^2));

disp(['RMSE: ', num2str(rmse)])
