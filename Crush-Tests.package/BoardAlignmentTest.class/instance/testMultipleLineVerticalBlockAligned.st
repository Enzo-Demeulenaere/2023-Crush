tests
testMultipleLineVerticalBlockAligned

	| alignedBlocks |
	board launchFromString: 'BBRRR
BBYYY
BBYYY
RRRRR
RRRRR'.
	alignedBlocks := board checkVerticalBlockAlignments.
	self assert: alignedBlocks size equals: 6