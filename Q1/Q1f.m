%% Loading data
loaddata;

%% Scatter plot
figure;
scatter(birth, death)

%% Correlation coefficient
corr_coef_m = corrcoef(birth, death);
corr_coef = corr_coef_m(1, 2);

%% Deleting unnecessary variables
clearvars -except corr_coef
