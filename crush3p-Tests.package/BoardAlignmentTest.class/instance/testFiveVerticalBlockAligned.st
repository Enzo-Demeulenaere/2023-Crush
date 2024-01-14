tests
testFiveVerticalBlockAligned

	| alignedBlocks |
	board launchFromString: 'BRRRR
BBBBB
BBBBB
BRRRR
BRRRR'.
	alignedBlocks := board checkVerticalBlockAlignments.
	self assert: alignedBlocks size equals: 5