tests
testThreeAlignedY

	| firstBlock secondBlock thirdBlock |
	firstBlock := BlueBlock new.
	secondBlock := GreenBlock new.
	thirdBlock := RedBlock new.
	
	board placeBlock: firstBlock atX: 1 atY: 1.
	board placeBlock: secondBlock atX: 1 atY: 2.
	board placeBlock: thirdBlock atX: 1 atY: 3.
	
	self assert: (board isAligned: firstBlock with: secondBlock and: thirdBlock) equals: true