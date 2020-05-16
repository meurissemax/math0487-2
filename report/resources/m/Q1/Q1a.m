%% Loading data
loaddata;

%% Histograms
figure;

% Birth rate
subplot(1, 2, 1)
histogram(birth, min(birth):1:(max(birth) + 1))

% Death rate
subplot(1, 2, 2)
histogram(death, min(death):1:(max(death) + 1))

%% Deleting unnecessary variables
clearvars
