replace
swapBlock: firstBlock secondBlock: secondBlock

	| firstBlockX firstBlockY |
	(firstBlock canSwapWith: secondBlock) ifFalse: [ ^ self ].

	firstBlockX := firstBlock positionX.
	firstBlockY := firstBlock positionY.
	
	self
		placeBlock: firstBlock
		atX: secondBlock positionX
		atY: secondBlock positionY.
	self placeBlock: secondBlock atX: firstBlockX atY: firstBlockY