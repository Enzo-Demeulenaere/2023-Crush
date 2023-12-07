accessing
board: aSkBoard

	board := aSkBoard.

	self constraintsDo: [ :c | c horizontal matchParent ]