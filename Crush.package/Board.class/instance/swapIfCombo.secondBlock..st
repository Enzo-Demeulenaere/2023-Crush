replace
swapIfCombo: firstBlock secondBlock: secondBlock

	| comboList |
	self swapBlock: firstBlock secondBlock: secondBlock.
	comboList := self checkBoardAlignments.
	comboList isEmpty
		ifTrue: [ self swapBlock: firstBlock secondBlock: secondBlock. ^true]
		ifFalse: [
			self replaceBlocks: comboList.
			[ comboList isNotEmpty ] whileTrue: [
				comboList := self checkBoardAlignments.
				self replaceBlocks: comboList.]. ^false]