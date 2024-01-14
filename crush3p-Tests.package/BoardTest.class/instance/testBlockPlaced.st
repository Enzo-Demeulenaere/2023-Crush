tests
testBlockPlaced

	| aBlock |
	aBlock := BlueBlock new.
	board placeBlock: aBlock atX: 1 atY: 1.
	self assert: (board atX: 1 atY: 1) equals: aBlock