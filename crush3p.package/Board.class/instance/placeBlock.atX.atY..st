as yet unclassified
placeBlock: aSimpleBlock atX: x atY: y 
	self grid atX: x atY: y put: aSimpleBlock.
	aSimpleBlock positionX: x.
	aSimpleBlock positionY: y.