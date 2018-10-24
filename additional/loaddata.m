%% Additional script
% Reads the data provided in the CSV file.

filename = 'db_stat19.csv';

data = csvread(filename, 1, 1, [1, 1, 100, 2]);

birth = data(:, 1);
death = data(:, 2);

clearvars filename
