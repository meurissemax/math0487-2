%% Loading data
loaddata;

%% Boxplots
figure;
boxplot([birth, death])

%% Quartiles
birth_25 = prctile(birth, 25);
birth_75 = prctile(birth, 75);

death_25 = prctile(death, 25);
death_75 = prctile(death, 75);

%% Outliers
birth_outliers = sum(isoutlier(birth), 1);
death_outliers = sum(isoutlier(death), 1);

%% Deleting unnecessary variables
clearvars -except birth_25 birth_75 death_25 death_75 birth_outliers...
    death_outliers
