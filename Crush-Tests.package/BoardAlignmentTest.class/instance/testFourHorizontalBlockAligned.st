tests
testFourHorizontalBlockAligned

	| alignedBlocks |
	board launchFromString: 'BBBBY
GR'.
	alignedBlocks := board checkHorizontalBlockAlignments.
	self assert: alignedBlocks size equals: 4