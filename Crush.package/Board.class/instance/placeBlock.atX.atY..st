replace
placeBlock: aSimpleBlock atX: x atY: y

	self grid atColumn: y atRow: x put: aSimpleBlock.
	aSimpleBlock position: (x @ y)