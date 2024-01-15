tests
testNoHorizontalBlockAligned

	| alignedBlocks |
	board launchFromString: 'BBRYB
GR'.
	alignedBlocks := board checkHorizontalBlockAlignments.
	self assert: alignedBlocks size equals: 0