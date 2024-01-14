tests
testMultipleBlockAligned

	| alignedBlocks |
	board launchFromString: 'BBBBR
BRYBY
BBYBY
RYRYR
RRRRR'.
	alignedBlocks := board checkBoardAlignments.
	self assert: alignedBlocks size equals: 13