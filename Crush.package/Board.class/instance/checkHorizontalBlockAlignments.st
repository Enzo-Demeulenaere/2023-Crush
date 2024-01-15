checking
checkHorizontalBlockAlignments

	| horizontalAlignmentTab blocActuel counter blockAligned |
	horizontalAlignmentTab := OrderedCollection new.
	blockAligned := OrderedCollection new.
	counter:= 1.
	
	"On parcourt toutes les lignes de notre grille"
	1 to: grid height do: [ :ligneIndex |
		"On parcourt chaque élément de la ligne"
		1 to: grid width do: [ :colonneIndex |
			blocActuel := self atX: ligneIndex atY: colonneIndex.
			
			"On vérifie que l'élément en cours n'est pas déjà dans la liste des éléments alignés ou n'est pas un bloc vide"
			((horizontalAlignmentTab includes: blocActuel) | (blocActuel color = 'empty')) ifFalse:[
				blockAligned add: blocActuel.
				
				"Tant qu'on ne dépasse pas la taille du tableau en largeur, on regarde si le bloc suivant est de la même couleur que le bloc actuel"
				[ ((colonneIndex+counter) <= grid width) and:[ (blocActuel color = ((self atX: ligneIndex atY: colonneIndex+counter) color))]] whileTrue:[
					blockAligned add: (self atX: ligneIndex atY: colonneIndex+counter).
					counter:= counter+1.
				].
			
				"Si on détecte 3 blocs de la même couleur alignés on les ajoute à la liste des blocs horizontales alignés"
				(counter >=3) ifTrue:[
					horizontalAlignmentTab addAll: blockAligned.
				].
				blockAligned removeAll.
				counter:= 1.
			].
		].
	].
	^ horizontalAlignmentTab.