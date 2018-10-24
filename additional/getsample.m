%% Additional function
% Function that pulls a number of samples i.i.d of a fixed size from
% the data.

% Arguments:
%   - number: the number of samples to pull
%   - sample_size: the size of samples to pull
%   - data: the data from which the samples are pullen

% Returned data:
%   - sample_set: a cell containing the samples

function sample_set = getsample(number, sample_size, data)

sample_set = cell(number, 1);

for i = 1:number
    draw = randsample(size(data, 1), sample_size, true);
    sample_set{i, 1} = data(draw, :);
end

end
