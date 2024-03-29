testing
canSwapWith: anotherBlock

	^ anotherBlock isSwappable and: [.
	self isAdjacent: anotherBlock]