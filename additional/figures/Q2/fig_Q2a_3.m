hold on

figproperties(cdfplot(sample_death), 'plot')
figproperties(cdfplot(death), 'plot')
figproperties(legend({'�chantillon i.i.d.','population'}, 'Location', 'southeast'), 'legend')

hold off

%figproperties(title('Polygones des fr�quences cumul�es (taux de mortalit�)'), 'title')
figproperties(xlabel('Taux de mortalit�'), 'label')
figproperties(ylabel('Fr�quence'), 'label')

grid on
