tests
testThreeSameColorAlignedY

	| firstBlock secondBlock thirdBlock |
	firstBlock := BlueBlock new.
	secondBlock := BlueBlock new.
	thirdBlock := BlueBlock new.
"firstBlock color"
"secondBlock color"
"thirdBlock color"
	board placeBlock: firstBlock atX: 1 atY: 1.
	board placeBlock: secondBlock atX: 1 atY: 2.
	board placeBlock: thirdBlock atX: 1 atY: 3.
	
	self assert: (board isAlignedColored: firstBlock with: secondBlock and: thirdBlock) equals: true