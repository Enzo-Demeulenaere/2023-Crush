testing
isAlignedColored: block1 with: block2 and: block3
	^ (self isAligned: block1 with: block2 and: block3) & (block1 color == block2 color) & (block2 color == block3 color)
	