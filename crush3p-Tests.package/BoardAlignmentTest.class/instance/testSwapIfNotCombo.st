tests
testSwapIfNotCombo

	board launchFromString: 'BBRYY'.
	board
		swapIfCombo: (board atX: 1 atY: 2)
		secondBlock: (board atX: 1 atY: 3).
	self assert: (board atX: 1 atY: 1) class equals: BlueBlock.
	self assert: (board atX: 1 atY: 2) class equals: BlueBlock.
	self assert: (board atX: 1 atY: 3) class equals: RedBlock.
	self assert: (board atX: 1 atY: 4) class equals: YellowBlock.
	self assert: (board atX: 1 atY: 5) class equals: YellowBlock