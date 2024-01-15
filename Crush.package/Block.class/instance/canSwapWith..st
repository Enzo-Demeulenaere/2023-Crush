testing
canSwapWith: anotherBlock

	anotherBlock isSwappable ifFalse: [ ^ false ].
	^ self isAdjacent: anotherBlock