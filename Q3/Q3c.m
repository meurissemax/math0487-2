%% Loading data
loaddata;

%% 100 samples of 50 countries
sample_number = 100;
sample_size = 50;

sample_set = getsample(sample_number, sample_size, data);

%% Mean and median
birth_mean = zeros(sample_number, 1);
birth_median = zeros(sample_number, 1);

for i = 1:sample_number
    birth_mean(i, 1) = mean(sample_set{i, 1}(:, 1));
    birth_median(i, 1) = median(sample_set{i, 1}(:, 1));
end

%% Bias and variance
mean_bias = mean(birth_mean - mean(birth));
mean_var = var(birth_mean, 1);

median_bias = mean(birth_median - median(birth));
median_var = var(birth_median, 1);

%% Deleting unnecessary variables
clearvars -except mean_bias mean_var median_bias median_var
