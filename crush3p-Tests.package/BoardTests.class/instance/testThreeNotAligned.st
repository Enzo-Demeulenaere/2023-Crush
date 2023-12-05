tests
testThreeNotAligned

	| firstBlock secondBlock thirdBlock |
	firstBlock := BlueBlock new.
	secondBlock := GreenBlock new.
	thirdBlock := RedBlock new.
	
	board placeBlock: firstBlock atX: 1 atY: 1.
	board placeBlock: secondBlock atX: 2 atY: 1.
	board placeBlock: thirdBlock atX: 3 atY: 2.
	
	self assert: (board isAligned: firstBlock with: secondBlock and: thirdBlock) equals: false