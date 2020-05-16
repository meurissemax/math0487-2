figproperties(histogram(death_ks), 'plot')

%figproperties(title({'Histogramme des distances de Kolmogorov-Smirnov', 'des taux de mortalité des 500 échantillons i.i.d.'}), 'title')
figproperties(xlabel('Distance de Kolmogorov-Smirnov'), 'label')
figproperties(ylabel('Nombre d''échantillons'), 'label')

grid on
