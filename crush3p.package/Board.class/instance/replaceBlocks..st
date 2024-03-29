as yet unclassified
replaceBlocks: blockList

	blockList do: [ :each |
		self incrementTotalScore: each score.
		"so place some random blocks instead of letting blocks fall for chain reaction"
		self
			placeBlock: self randomBlock
			atX: each positionX
			atY: each positionY ]