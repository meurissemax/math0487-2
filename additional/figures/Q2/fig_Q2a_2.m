hold on

figproperties(cdfplot(sample_birth), 'plot')
figproperties(cdfplot(birth), 'plot')
figproperties(legend({'�chantillon i.i.d.','population'}, 'Location', 'southeast'), 'legend')

hold off

%figproperties(title('Polygones des fr�quences cumul�es (taux de natalit�)'), 'title')
figproperties(xlabel('Taux de natalit�'), 'label')
figproperties(ylabel('Fr�quence'), 'label')

grid on
