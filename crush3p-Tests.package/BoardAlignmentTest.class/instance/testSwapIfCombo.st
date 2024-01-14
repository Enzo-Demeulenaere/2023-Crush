tests
testSwapIfCombo

	board launchFromString: 'BYRYYYYYYYY'.
	board
		swapIfCombo: (board atX: 1 atY: 2)
		secondBlock: (board atX: 1 atY: 3).
	self assert: board totalScore equals: 9