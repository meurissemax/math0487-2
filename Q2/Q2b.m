%% Loading data
loaddata;

%% 500 samples of 20 countries
sample_number = 500;
sample_size = 20;

sample_set = getsample(sample_number, sample_size, data);

%% Means of samples
birth_sample_mean = zeros(sample_number, 1);
death_sample_mean = zeros(sample_number, 1);

for i = 1:sample_number
    birth_sample_mean(i, 1) = mean(sample_set{i}(:, 1));
    death_sample_mean(i, 1) = mean(sample_set{i}(:, 2));
end

%% Histograms of means of samples
figure;

% Birth rate
subplot(1, 2, 1)
histogram(birth_sample_mean)

% Death rate
subplot(1, 2, 2)
histogram(death_sample_mean)

%% Mean of the means of the samples
birth_mean = mean(birth_sample_mean);
death_mean = mean(death_sample_mean);

%% Median of samples
birth_sample_median = zeros(sample_number, 1);
death_sample_median = zeros(sample_number, 1);

for i = 1:sample_number
    birth_sample_median(i, 1) = median(sample_set{i}(:, 1));
    death_sample_median(i, 1) = median(sample_set{i}(:, 2));
end

%% Histograms of medians of samples
figure;

% Birth rate
subplot(1, 2, 1)
histogram(birth_sample_median)

% Death rate
subplot(1, 2, 2)
histogram(death_sample_median)

%% Mean of the medians of the samples
birth_median = mean(birth_sample_median);
death_median = mean(death_sample_median);

%% Standard deviation of samples
birth_sample_std = zeros(sample_number, 1);
death_sample_std = zeros(sample_number, 1);

for i = 1:sample_number
    birth_sample_std(i, 1) = std(sample_set{i}(:, 1), 1);
    death_sample_std(i, 1) = std(sample_set{i}(:, 2), 1);
end

%% Histograms of standard deviations of samples
figure;

% Birth rate
subplot(1, 2, 1)
histogram(birth_sample_std)

% Death rate
subplot(1, 2, 2)
histogram(death_sample_std)

%% Mean of the standard deviations of the samples
birth_std = mean(birth_sample_std);
death_std = mean(death_sample_std);

%% Kolmogorov-Smirnov distances
birth_ks = zeros(sample_number, 1);
death_ks = zeros(sample_number, 1);

for i = 1:sample_number
    [~, ~, birth_ks(i, 1)] = kstest2(sample_set{i}(:, 1), birth);
    [~, ~, death_ks(i, 1)] = kstest2(sample_set{i}(:, 1), death);
end

% Histograms
figure;

% Birth rate
subplot(1, 2, 1)
histogram(birth_ks)

% Death rate
subplot(1, 2, 2)
histogram(death_ks)

%% Deleting unnecessary variables
clearvars -except birth_sample_mean death_sample_mean birth_mean...
    death_mean birth_sample_median death_sample_median birth_median...
    death_median birth_sample_std death_sample_std birth_std death_std...
    birth_ks death_ks
