tests
testThreeHorizontalBlockAligned

	| alignedBlocks |
	board launchFromString: 'BBBYB
GR'.
	alignedBlocks := board checkHorizontalBlockAlignments.
	self assert: alignedBlocks size equals: 3