replace
randomBlock

	| blockClasses |
	
	"Liste des classes de blocs disponibles"
	blockClasses := {BlueBlock. GreenBlock. YellowBlock. RedBlock}.

	^ (blockClasses atRandom) new.