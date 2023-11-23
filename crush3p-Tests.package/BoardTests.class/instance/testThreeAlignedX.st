tests
testThreeAlignedX

	| firstBlock secondBlock thirdBlock |
	firstBlock := ColoredBlock newBlue.
	secondBlock := ColoredBlock newGreen.
	thirdBlock := ColoredBlock newRed.
	
	board placeBlock: firstBlock atX: 1 atY: 1.
	board placeBlock: secondBlock atX: 2 atY: 1.
	board placeBlock: thirdBlock atX: 3 atY: 1.
	
	self assert: (board isAligned: firstBlock with: secondBlock and: thirdBlock) equals: true