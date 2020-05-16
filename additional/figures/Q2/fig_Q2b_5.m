figproperties(histogram(birth_sample_std), 'plot')

%figproperties(title({'Histogramme des écarts-types des taux de natalité', 'des 500 échantillons i.i.d.'}), 'title')
figproperties(xlabel('Écart-type'), 'label')
figproperties(ylabel('Nombre d''échantillons'), 'label')

grid on
