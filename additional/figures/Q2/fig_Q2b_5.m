figproperties(histogram(birth_sample_std), 'plot')

%figproperties(title({'Histogramme des �carts-types des taux de natalit�', 'des 500 �chantillons i.i.d.'}), 'title')
figproperties(xlabel('�cart-type'), 'label')
figproperties(ylabel('Nombre d''�chantillons'), 'label')

grid on
