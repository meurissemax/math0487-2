figproperties(histogram(birth, min(birth):1:(max(birth) + 1)), 'plot')

%figproperties(title('Histogramme du taux de natalit�'), 'title')
figproperties(xlabel('Taux de natalit�'), 'label')
figproperties(ylabel('Nombre de pays'), 'label')

grid on
