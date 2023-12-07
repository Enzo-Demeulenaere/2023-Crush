private - menu building
menuHelp

	| menu |
	menu := ToMenu new.
	menu labelText: 'Help'.
	menu iconImage: (Smalltalk ui icons iconNamed: #glamorousHelp).
	menu whenClickedDo: [
		| container lab space |
		lab := ToLabel text: ('
Comment jouer à Crush3P :
		
Crush3P est un jeu de puzzle où l''objectif est de faire correspondre au moins trois gemmes de même couleur sur un plateau rempli d''éléments variés.

But du jeu :

L''objectif principal de Crush3P est d''accumuler autant de points que possible en éliminant des gemmes du plateau en les faisant correspondre.

Les règles sont simples :

- Faites correspondre au moins trois gemmes de la même couleur, alignées horizontalement ou verticalement, pour les faire disparaître du plateau.

- Des éléments bonus spéciaux apparaissent lorsque vous faites correspondre plus de trois gemmes, offrant des avantages pour éliminer plusieurs gemmes à la fois ou changer la couleur des gemmes.

- Échangez deux gemmes adjacentes en cliquant dessus pour créer des correspondances et planifier vos mouvements.


-----

Vous pouvez commencer à jouer en utilisant le bouton ''Play''.
			
Bon jeu !' asRopedText foreground: Color white).
		lab beMultiLine.
		lab hMatchParent.
		container := BlElement new
			             background: Color white;
			             padding: (BlInsets all: 15);
			             layout: BlLinearLayout vertical;
			             constraintsDo: [ :c |
				             c horizontal fitContent.
				             c vertical fitContent ].
		container addChild: lab.
		space := BlSpace new.
		space title: 'Crush3P - Help'.
		space root
			layout: BlFrameLayout new;
			addChild: container;
			constraintsDo: [ :c |
				c horizontal matchParent.
				c vertical fitContent ].
		space pulse.
		space extent: container extent.
		space show ].
	^ menu