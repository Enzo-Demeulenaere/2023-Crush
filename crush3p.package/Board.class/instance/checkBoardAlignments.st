as yet unclassified
checkBoardAlignments

	| horizontalAlignmentTab verticalAlignmentTab resultTab |
	horizontalAlignmentTab := self checkHorizontalBlockAlignments.
	verticalAlignmentTab := self checkVerticalBlockAlignments.

	resultTab := Set new.
	resultTab addAll: verticalAlignmentTab.
	resultTab addAll: horizontalAlignmentTab.

	^ resultTab asOrderedCollection 