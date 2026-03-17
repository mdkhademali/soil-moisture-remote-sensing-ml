
% svr_model.m

load('../../data/processed_dataset.mat')

model = fitrsvm(X,y);

pred = predict(model,X);

rmse = sqrt(mean((pred - y).^2));

disp(['RMSE: ', num2str(rmse)])
