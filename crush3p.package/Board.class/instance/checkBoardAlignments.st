as yet unclassified
checkBoardAlignments
	"Créer une liste vide qui contiendra les blocs alignés horizontalement"
	"Créer une liste vide qui contiendra les blocs alignés verticalement"
	
	"Pour chaque ligne du tableau 2D"
		"Si le bloc n'est pas déjà dans la liste alignés horizontalement"
			"Tant que le bloc horizontal suivant est de la même couleur que le bloc en cours regarder le bloc suivant"
				"Si le nombre de bloc de la meme couleur est >=3 ajoutez les blocs à la liste"
	
	"Pour chaque colonne du tableau 2D"
		"Si le bloc n'est pas déjà dans la liste alignés verticalement"
			"Tant que le bloc vertical suivant est de la même couleur que le bloc en cours regardezr le bloc suivant"
				"Si le nombre de bloc de la meme couleur est >=3 ajoutez les blocs à la liste"
	^ self.