as yet unclassified
swapIfCombo: firstBlock secondBlock: secondBlock

	| comboList |
	self swapBlock: firstBlock secondBlock: secondBlock.
	comboList := self checkBoardAlignments.
	comboList isEmpty
		ifTrue: [ self swapBlock: firstBlock secondBlock: secondBlock ]
		ifFalse: [ self replaceBlocks: comboList ]