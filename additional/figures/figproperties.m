%% Additional function
% Function that defines the properties of the figures.

% Arguments:
%   - object: the object whose properties we want to define
%   - type: the type of the object

function figproperties(object, type)

% Plot
if strcmp(type, 'plot')
    set(gca,...
        'FontName', 'Arial',...
        'FontSize', 18,...
        'FontWeight', 'normal',...
        'FontSmoothing', 'on',...
        'GridAlpha', 0.40 ...
        );

    set(object,...
        'LineWidth', 1 ...
        );

    set(gcf,...
        'Position', get(0, 'Screensize')...
        );
end

% Title
if strcmp(type, 'title')
    set(object,...
        'FontName', 'Arial',...
        'FontSize', 24,...
        'FontWeight', 'bold',...
        'FontSmoothing', 'on'...
        );
end

% Label
if strcmp(type, 'label')
    set(object,...
        'FontName', 'Arial',...
        'FontSize', 20,...
        'FontWeight', 'normal',...
        'FontSmoothing', 'on'...
        );
end

% Legend
if strcmp(type, 'legend')
    set(object,...
        'FontName', 'Arial',...
        'FontSize', 18,...
        'FontWeight', 'normal'...
        );
end

end