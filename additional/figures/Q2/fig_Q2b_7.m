figproperties(histogram(birth_ks), 'plot')

%figproperties(title({'Histogramme des distances de Kolmogorov-Smirnov', 'des taux de natalit� des 500 �chantillons i.i.d.'}), 'title')
figproperties(xlabel('Distance de Kolmogorv-Smirnov'), 'label')
figproperties(ylabel('Nombre d''�chantillons'), 'label')

grid on
