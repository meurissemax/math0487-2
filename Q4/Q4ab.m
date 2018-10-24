%% Loading data
loaddata; 

%% 100 times 5 samples of 40 countries
sample_time = 100;
sample_number = 5;
sample_size = 40;

sample_set = cell(sample_time, 1);

for i = 1:sample_time
    sample_set{i, 1} = getsample(sample_number, sample_size, data);
end

%% Parameters
alpha = 0.05;
u = norminv(1 - (alpha / 2));

%% True proportion of countries with a birth rate lower than Belgium
birth_rate_belgium = birth(9, 1);
x = sum(birth < birth_rate_belgium) / size(birth, 1);

%% Maximum bound of the confidence interval
CI_max = x + (u * sqrt((x * (1 - x)) / sample_size));

%% Proportion of countries with a lower birth rate than Belgium for each sample
prop = cell(sample_time, 1);

reject_belgium = 0;
reject_OMS = 0;

for i = 1:sample_time
    for j = 1:sample_number
        prop{i, 1}(j, 1) = 0;
        
        for k = 1:sample_size
            if sample_set{i, 1}{j, 1}(k, 1) < birth_rate_belgium
                prop{i, 1}(j, 1) = prop{i, 1}(j, 1) + 1;
            end
        end
        
        prop{i, 1}(j, 1) = prop{i, 1}(j, 1) / sample_size;
        
        % Number of rejections
        if prop{i, 1}(j, 1) > CI_max
            if j == 1
                reject_belgium = reject_belgium + 1; % Belgium
            else  
                reject_OMS = reject_OMS + 1; % OMS
                continue
            end
        end
    end
end

%% Deleting unnecessary variables
clearvars -except x CI_max reject_belgium reject_OMS
