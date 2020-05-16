hold on

figproperties(cdfplot(sample_death), 'plot')
figproperties(cdfplot(death), 'plot')
figproperties(legend({'échantillon i.i.d.','population'}, 'Location', 'southeast'), 'legend')

hold off

%figproperties(title('Polygones des fréquences cumulées (taux de mortalité)'), 'title')
figproperties(xlabel('Taux de mortalité'), 'label')
figproperties(ylabel('Fréquence'), 'label')

grid on
