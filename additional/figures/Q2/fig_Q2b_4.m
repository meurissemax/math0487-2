figproperties(histogram(death_sample_median), 'plot')

%figproperties(title({'Histogramme des médianes des taux de mortalité', 'des 500 échantillons i.i.d.'}), 'title')
figproperties(xlabel('Médiane'), 'label')
figproperties(ylabel('Nombre d''échantillons'), 'label')

grid on
