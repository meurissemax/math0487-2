figproperties(histogram(birth_sample_mean), 'plot')

%figproperties(title({'Histogramme des taux de natalit� moyens', 'des 500 �chantillons i.i.d.'}), 'title')
figproperties(xlabel('Taux de natalit� moyen'), 'label')
figproperties(ylabel('Nombre d''�chantillons'), 'label')

grid on
