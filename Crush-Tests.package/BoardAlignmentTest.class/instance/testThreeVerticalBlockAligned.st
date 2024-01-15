tests
testThreeVerticalBlockAligned

	| alignedBlocks |
	board launchFromString: 'BRRRR
BBBBB
BBBBB'.
	alignedBlocks := board checkVerticalBlockAlignments.
	self assert: alignedBlocks size equals: 3