figproperties(histogram(birth_sample_median), 'plot')

%figproperties(title({'Histogrammes des médianes des taux de natalité', 'des 500 échantillons i.i.d.'}), 'title')
figproperties(xlabel('Médiane'), 'label')
figproperties(ylabel('Nombre d''échantillons'), 'label')

grid on
