tests
testBlockCantSwap

	| firstBlock secondBlock |
	firstBlock := ColoredBlock new.
	secondBlock := ColoredBlock new.

	board placeBlock: firstBlock atX: 1 atY: 1.
	board placeBlock: secondBlock atX: 3 atY: 1.
	board swapBlock: firstBlock secondBlock: secondBlock.

	self assert: firstBlock positionX equals: 1.
	self assert: firstBlock positionY equals: 1.
	self assert: secondBlock positionX equals: 3.
	self assert: secondBlock positionY equals: 1.

	self assert: (board atX: 1 atY: 1) equals: firstBlock.
	self assert: (board atX: 3 atY: 1) equals: secondBlock