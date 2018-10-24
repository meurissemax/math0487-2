%% Loading data
loaddata;

%% 100 samples of 20 countries
sample_number = 100;
sample_size = 20;

sample_set = getsample(sample_number, sample_size, data);

%% Mean (Q3a) and median (Q3b)
birth_mean = zeros(sample_number, 1);
birth_median = zeros(sample_number, 1);

for i = 1:sample_number
    birth_mean(i, 1) = mean(sample_set{i, 1}(:, 1));
    birth_median(i, 1) = median(sample_set{i, 1}(:, 1));
end

%% Bias and variance
% Question 3 - a)
mean_bias = mean(birth_mean - mean(birth));
mean_var = var(birth_mean, 1);

% Question 3 - b)
median_bias = mean(birth_median - median(birth));
median_var = var(birth_median, 1);

%% Confidence intervals (Q3d)
% General data
pop_mean = mean(data(:, 1));
p = 0.95;
alpha = 1 - p;

% Student law
birth_student_count = 0;

t = tinv(1 - (alpha / 2), sample_size - 1);

birth_student_ci = zeros(sample_number, 2);

for i = 1:sample_number
    part(1) = mean(sample_set{i, 1}(:, 1));
    part(2) = t * (std(sample_set{i, 1}(:, 1), 0) / sqrt(sample_size));

    birth_student_ci(i, 1) = part(1) - part(2);
    birth_student_ci(i, 2) = part(1) + part(2);

    if (pop_mean >= birth_student_ci(i, 1)) && (pop_mean <= birth_student_ci(i, 2))
        birth_student_count = birth_student_count + 1;
    end
end

% Gaussian law
birth_gaussian_count = 0;

u = norminv(1 - (alpha / 2));

birth_gaussian_ci = zeros(sample_number, 2);

for i = 1:sample_number
    part(1) = mean(sample_set{i, 1}(:, 1));
    part(2) = u * (std(birth, 1) / sqrt(sample_size));

    birth_gaussian_ci(i, 1) = part(1) - part(2);
    birth_gaussian_ci(i, 2) = part(1) + part(2);

    if (pop_mean >= birth_gaussian_ci(i, 1)) && (pop_mean <= birth_gaussian_ci(i, 2))
        birth_gaussian_count = birth_gaussian_count + 1;
    end
end

%% Deleting unnecessary variables
clearvars -except mean_bias mean_var median_bias median_var...
    birth_student_ci birth_student_count birth_gaussian_ci...
    birth_gaussian_count
