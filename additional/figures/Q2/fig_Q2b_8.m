figproperties(histogram(death_ks), 'plot')

%figproperties(title({'Histogramme des distances de Kolmogorov-Smirnov', 'des taux de mortalit� des 500 �chantillons i.i.d.'}), 'title')
figproperties(xlabel('Distance de Kolmogorov-Smirnov'), 'label')
figproperties(ylabel('Nombre d''�chantillons'), 'label')

grid on
