tests
testGetColorOfColoredBlockPlaced
	| aBlock |
	aBlock:= ColoredBlock new.
	aBlock color: BLUE.
	board placeBlock: aBlock atX: 1 atY: 1.
	self assert: (board atX: 1 atY: 1) color equals: 'b'.