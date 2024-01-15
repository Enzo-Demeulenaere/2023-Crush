tests
testBoardLaunchFromString

	| board |
	board := Board new.
	board launchFromString: 'BBRYB
GR'.
	self assert: (board atX: 1 atY: 1) class equals: BlueBlock.
	self assert: (board atX: 1 atY: 3) class equals: RedBlock.
	self assert: (board atX: 1 atY: 4) class equals: YellowBlock.
	self assert: (board atX: 2 atY: 1) class equals: GreenBlock.
	self assert: (board atX: 2 atY: 5) class equals: GroundBlock