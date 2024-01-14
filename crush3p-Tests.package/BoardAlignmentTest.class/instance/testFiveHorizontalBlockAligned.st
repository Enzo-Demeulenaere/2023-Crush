tests
testFiveHorizontalBlockAligned

	| alignedBlocks |
	board launchFromString: 'BBBBB
GR'.
	alignedBlocks := board checkHorizontalBlockAlignments.
	self assert: alignedBlocks size equals: 5