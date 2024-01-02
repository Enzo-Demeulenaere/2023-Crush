initialization
initialize 
	super initialize.
	grid := CTNewArray2DRowsAndColumns width: 20 height: 20.
	selected := nil.
	totalScore := 0.