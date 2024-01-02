as yet unclassified
replaceBlocks: blockList

	blockList do: [ :each | self incrementTotalScore: each score.
		self placeBlock: self randomBlock atX:  each positionX atY:each positionY].