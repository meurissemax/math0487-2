figproperties(boxplot([birth, death], 'Labels', {'Taux de natalité', 'Taux de mortalité'}), 'plot')

%figproperties(title('Comparaison des boîtes à moustaches pour un échantillons i.i.d. de 20 pays'), 'title')
figproperties(ylabel('Taux'), 'label')

grid on
