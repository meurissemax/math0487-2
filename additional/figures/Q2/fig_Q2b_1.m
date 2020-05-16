figproperties(histogram(birth_sample_mean), 'plot')

%figproperties(title({'Histogramme des taux de natalité moyens', 'des 500 échantillons i.i.d.'}), 'title')
figproperties(xlabel('Taux de natalité moyen'), 'label')
figproperties(ylabel('Nombre d''échantillons'), 'label')

grid on
