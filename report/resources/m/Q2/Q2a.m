%% Loading data
loaddata;

%% Sample of 20 countries
sample_set = getsample(1, 20, data);

sample_birth = sample_set{1, 1}(:, 1);
sample_death = sample_set{1, 1}(:, 2);

%% Descriptive statistics
% Mean
birth_mean = mean(sample_birth);
death_mean = mean(sample_death);

% Median
birth_median = median(sample_birth);
death_median = median(sample_death);

% Standard deviation
birth_std = std(sample_birth, 1);
death_std = std(sample_death, 1);

%% Boxplots
figure;
boxplot([sample_birth, sample_death])

%% Polygon of cumulative frequencies
% Birth rate
figure;

subplot(1, 2, 1)

hold on

cdfplot(sample_birth) % sample
cdfplot(birth) % population

hold off

% Death rate
subplot(1, 2, 2)

hold on

cdfplot(sample_death) % sample
cdfplot(death) % population

hold off

%% Kolmogorov-Smirnov distances
[~, ~, birth_ks] = kstest2(sample_birth, birth);
[~, ~, death_ks] = kstest2(sample_death, death);

%% Deleting unnecessary variables
clearvars -except birth_mean death_mean birth_median death_median...
    birth_std death_std birth_ks death_ks
