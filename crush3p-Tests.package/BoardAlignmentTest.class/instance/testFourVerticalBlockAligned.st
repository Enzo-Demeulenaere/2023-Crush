tests
testFourVerticalBlockAligned

	| alignedBlocks |
	board launchFromString: 'BRRRR
BBBBB
BBBBB
BRRRR'.
	alignedBlocks := board checkVerticalBlockAlignments.
	self assert: alignedBlocks size equals: 4