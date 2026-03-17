
% evaluation_plot.m

load('../../data/processed_dataset.mat')

model = fitrtree(X,y);

pred = predict(model,X);

figure
scatter(y,pred)
xlabel('Observed Soil Moisture')
ylabel('Predicted Soil Moisture')
title('Model Performance')
grid on
