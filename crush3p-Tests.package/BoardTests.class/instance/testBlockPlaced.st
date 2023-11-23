tests
testBlockPlaced
	| aBlock |
	aBlock:= SimpleBlock new.
	board placeBlock: aBlock atX: 1 atY: 1.
	self assert: (board atX: 1 atY: 1) equals: aBlock.