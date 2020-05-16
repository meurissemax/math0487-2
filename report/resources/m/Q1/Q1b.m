%% Loading data
loaddata;

%% Descriptive statistics
% Mean
birth_mean = mean(birth);
death_mean = mean(death);

% Median
birth_median = median(birth);
death_median = median(death);

% Mode
birth_mode = mode(birth);
death_mode = mode(death);

% Standard deviation
birth_std = std(birth, 1);
death_std = std(death, 1);

%% Belgium
birth_be = birth(9, 1);
death_be = death(9, 1);

%% Deleting unnecessary variables
clearvars -except data birth death birth_mean death_mean birth_median...
    death_median birth_mode death_mode birth_std death_std birth_be...
    death_be
