testing
isAligned: block1 with: block2 and: block3
	^ (block1 isAdjacent: block2) & block2 isAdjacent: block3.	