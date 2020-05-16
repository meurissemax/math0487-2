figproperties(histogram(death_sample_mean), 'plot')

%figproperties(title({'Histogramme des taux de mortalité moyens', 'des 500 échantillons i.i.d.'}), 'title')
figproperties(xlabel('Taux de mortalité moyen'), 'label')
figproperties(ylabel('Nombre d''échantillons'), 'label')

grid on
