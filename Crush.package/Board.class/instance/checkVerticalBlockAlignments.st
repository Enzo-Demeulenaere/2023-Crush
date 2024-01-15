checking
checkVerticalBlockAlignments

	| verticalAlignmentTab blocActuel counter blockAligned |
	verticalAlignmentTab := OrderedCollection new.
	blockAligned := OrderedCollection new.
	counter:= 1.
	
	"On parcourt toutes les colonnes de notre grille"
	1 to: grid width do: [ :colonneIndex |
		"On parcourt chaque élément de la colonne"
		1 to: grid height do: [ :ligneIndex |
			blocActuel := self atX: ligneIndex atY: colonneIndex.
			
			"On vérifie que l'élément en cours n'est pas déjà dans la liste des éléments alignés ou n'est pas un bloc vide"
			((verticalAlignmentTab includes: blocActuel) | ((blocActuel color) = 'empty')) ifFalse:[
				blockAligned add: blocActuel.
				
				"Tant qu'on ne dépasse pas la taille du tableau en hauteur, on regarde si le bloc suivant est de la même couleur que le bloc actuel"
				[ ((ligneIndex+counter)<= grid height) and:[ ((blocActuel color) = ((self atX: ligneIndex+counter atY: colonneIndex) color))]] whileTrue:[
					blockAligned add: (self atX: ligneIndex+counter atY: colonneIndex).
					counter := counter+1.
				].
			
				"Si on détecte 3 blocs de la même couleur alignés on les ajoute à la liste des blocs horizontales alignés"
				(counter >=3) ifTrue:[
					verticalAlignmentTab addAll: blockAligned.
				].
				blockAligned removeAll.
				counter:= 1.
			].
		].
	].
	^ verticalAlignmentTab.