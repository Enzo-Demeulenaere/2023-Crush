as yet unclassified
swapIfCombo: firstBlock secondBlock: secondBlock

	| comboList |
	self swapBlock: firstBlock secondBlock: secondBlock.
	comboList := self checkHorizontalBlockAlignments.
	comboList isEmpty
		ifTrue: [ self swapBlock: firstBlock secondBlock: secondBlock ]
		ifFalse: [ self replaceBlocks: comboList ]