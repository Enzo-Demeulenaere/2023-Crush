tests
testThreeSameColorAlignedY

	| firstBlock secondBlock thirdBlock |
	firstBlock := ColoredBlock newBlue.
	secondBlock := ColoredBlock newBlue.
	thirdBlock := ColoredBlock newBlue.
"firstBlock color"
"secondBlock color"
"thirdBlock color"
	board placeBlock: firstBlock atX: 1 atY: 1.
	board placeBlock: secondBlock atX: 1 atY: 2.
	board placeBlock: thirdBlock atX: 1 atY: 3.
	
	self assert: (board isAlignedColored: firstBlock with: secondBlock and: thirdBlock) equals: true