%% Loading data
loaddata;

%% Polygon of cumulative frequencies (birth rate)
figure;
cdfplot(birth)

%% Proportion of countries with a birth rate in [be_rate, 20]
be_rate = birth(9, 1);

[f, x] = ecdf(birth);
birth_proportion = f(x == 20) - f(x == be_rate);

%% Deleting unnecessary variables
clearvars -except birth_proportion
