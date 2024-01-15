tests
testBlockSwap

	| firstBlock secondBlock |
	firstBlock := RedBlock new.
	secondBlock := BlueBlock new.

	board placeBlock: firstBlock atX: 1 atY: 1.
	board placeBlock: secondBlock atX: 2 atY: 1.
	board swapBlock: firstBlock secondBlock: secondBlock.

	self assert: firstBlock positionX equals: 2.
	self assert: firstBlock positionY equals: 1.
	self assert: secondBlock positionX equals: 1.
	self assert: secondBlock positionY equals: 1.

	self assert: (board atX: 1 atY: 1) equals: secondBlock.
	self assert: (board atX: 2 atY: 1) equals: firstBlock