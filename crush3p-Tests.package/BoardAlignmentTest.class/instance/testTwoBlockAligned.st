tests
testTwoBlockAligned

	| alignedBlocks |
	board launchFromString: 'BBBRR
BRYBY
BBYBY
RYRYR
RYRYR'.
	alignedBlocks := board checkBoardAlignments.
	self assert: alignedBlocks size equals: 5