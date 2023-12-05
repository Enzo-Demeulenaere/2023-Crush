tests
testThreeSameColorAlignedX

	| firstBlock secondBlock thirdBlock |
	firstBlock := BlueBlock new.
	secondBlock := BlueBlock new.
	thirdBlock := BlueBlock new.
"firstBlock color"
"secondBlock color"
"thirdBlock color"
	board placeBlock: firstBlock atX: 1 atY: 1.
	board placeBlock: secondBlock atX: 2 atY: 1.
	board placeBlock: thirdBlock atX: 3 atY: 1.
	
	self assert: (board isAlignedColored: firstBlock with: secondBlock and: thirdBlock) equals: true