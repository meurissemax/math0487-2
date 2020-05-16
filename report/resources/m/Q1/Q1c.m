%% Loading previous data
Q1b;

%% Normal rates and country proportions
countries_number = size(data, 1);

% Birth
birth_normal = [birth_mean - birth_std, birth_mean + birth_std];

birth_number = sum(birth >= birth_normal(1) & birth <= birth_normal(2), 1);
birth_proportion = birth_number / countries_number;

% Death
death_normal = [death_mean - death_std, death_mean + death_std];

death_number = sum(death >= death_normal(1) & death <= death_normal(2), 1);
death_proportion = death_number / countries_number;

%% Belgium
birth_normal_be = birth_be >= birth_normal(1) & birth_be <= birth_normal(2);
death_normal_be = death_be >= death_normal(1) & death_be <= death_normal(2);

%% Deleting unnecessary variables
clearvars -except birth_normal birth_proportion death_normal...
    death_proportion birth_normal_be death_normal_be
