tests
testThreeSameColorNotAligned

	| firstBlock secondBlock thirdBlock |
	firstBlock := ColoredBlock newBlue.
	secondBlock := ColoredBlock newBlue.
	thirdBlock := ColoredBlock newBlue.
"firstBlock color"
"secondBlock color"
"thirdBlock color"
	board placeBlock: firstBlock atX: 1 atY: 1.
	board placeBlock: secondBlock atX: 2 atY: 1.
	board placeBlock: thirdBlock atX: 5 atY: 1.
	
	self assert: (board isAlignedColored: firstBlock with: secondBlock and: thirdBlock) equals: false