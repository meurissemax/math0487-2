figproperties(histogram(death_sample_mean), 'plot')

%figproperties(title({'Histogramme des taux de mortalit� moyens', 'des 500 �chantillons i.i.d.'}), 'title')
figproperties(xlabel('Taux de mortalit� moyen'), 'label')
figproperties(ylabel('Nombre d''�chantillons'), 'label')

grid on
