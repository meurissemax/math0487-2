figproperties(histogram(birth_ks), 'plot')

%figproperties(title({'Histogramme des distances de Kolmogorov-Smirnov', 'des taux de natalité des 500 échantillons i.i.d.'}), 'title')
figproperties(xlabel('Distance de Kolmogorv-Smirnov'), 'label')
figproperties(ylabel('Nombre d''échantillons'), 'label')

grid on
