figproperties(histogram(death_sample_median), 'plot')

%figproperties(title({'Histogramme des m�dianes des taux de mortalit�', 'des 500 �chantillons i.i.d.'}), 'title')
figproperties(xlabel('M�diane'), 'label')
figproperties(ylabel('Nombre d''�chantillons'), 'label')

grid on
