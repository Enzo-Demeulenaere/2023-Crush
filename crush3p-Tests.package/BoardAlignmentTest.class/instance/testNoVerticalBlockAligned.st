tests
testNoVerticalBlockAligned

	| alignedBlocks |
	board launchFromString: 'BRRRR
G
G'.
	alignedBlocks := board checkVerticalBlockAlignments.
	self assert: alignedBlocks size equals: 0