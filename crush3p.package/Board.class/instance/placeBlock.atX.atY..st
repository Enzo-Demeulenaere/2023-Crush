as yet unclassified
placeBlock: aSimpleBlock atX: x atY: y 
	self grid atColumn: x atRow: y put: aSimpleBlock.
	aSimpleBlock positionX: x.
	aSimpleBlock positionY: y.