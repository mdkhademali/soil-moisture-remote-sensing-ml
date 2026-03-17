
% preprocess_data.m
% Load satellite features and soil moisture observations

data = readtable('../../data/sample_satellite/features.csv');
soil = readtable('../../data/sample_soil/soil_moisture.csv');

dataset = join(data,soil);

X = dataset{:,1:3};
y = dataset.soil_moisture;

save('../../data/processed_dataset.mat','X','y');

disp('Dataset processed successfully')
