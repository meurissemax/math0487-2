figproperties(histogram(death, min(death):1:max(death)), 'plot')

%figproperties(title('Histogramme du taux de mortalité'), 'title')
figproperties(xlabel('Taux de mortalité'), 'label')
figproperties(ylabel('Nombre de pays'), 'label')

grid on
