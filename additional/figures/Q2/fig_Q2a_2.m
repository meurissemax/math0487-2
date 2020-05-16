hold on

figproperties(cdfplot(sample_birth), 'plot')
figproperties(cdfplot(birth), 'plot')
figproperties(legend({'échantillon i.i.d.','population'}, 'Location', 'southeast'), 'legend')

hold off

%figproperties(title('Polygones des fréquences cumulées (taux de natalité)'), 'title')
figproperties(xlabel('Taux de natalité'), 'label')
figproperties(ylabel('Fréquence'), 'label')

grid on
