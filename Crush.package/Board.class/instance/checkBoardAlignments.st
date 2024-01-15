checking
checkBoardAlignments
	|horizontalAlignmentTab verticalAlignmentTab resultTab|
	
	horizontalAlignmentTab := self checkHorizontalBlockAlignments.
	verticalAlignmentTab := self checkVerticalBlockAlignments.
	
	resultTab := OrderedCollection new.
	resultTab addAllFirstUnlessAlreadyPresent: verticalAlignmentTab.
	resultTab addAllFirstUnlessAlreadyPresent: horizontalAlignmentTab.

	^ resultTab.