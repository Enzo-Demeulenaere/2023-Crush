tests
testMultipleLineHorizontalBlockAligned

	| alignedBlocks |
	board launchFromString: 'BBBYB
GGGRR'.
	alignedBlocks := board checkHorizontalBlockAlignments.
	self assert: alignedBlocks size equals: 6