tests
testSwapIfCombo
	self skip.
	"This test is skipped because it fails randomly. 
	Indeed the game is based on a random generator to place new blocs. 
	The solution is to be able to configure the game with a configurator object (probably a little strategy)"
	
	board launchFromString: 'BYRYYYYYYYY'.
	board
		swapIfCombo: (board atX: 1 atY: 2)
		secondBlock: (board atX: 1 atY: 3).
	self assert: board totalScore equals: 9