as yet unclassified
swapBlock: firstBlock secondBlock: secondBlock

	| firstBlockX firstBlockY |
	firstBlockX := firstBlock positionX.
	firstBlockY := firstBlock positionY.

	self placeBlock: firstBlock atX: (secondBlock positionX) atY: (secondBlock positionY).
	self placeBlock: secondBlock atX: firstBlockX atY: firstBlockY.