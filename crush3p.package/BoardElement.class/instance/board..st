accessing
board: aTBoard

	board := aTBoard.
	self layout:
		(BlGridLayout horizontal cellSpacing: 5 - (board grid width // 5)).
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal matchParent.
		aLayoutConstraints vertical matchParent ].
	self padding: (BlInsets all: 5).
	self layout columnCount: board grid width.
	
	board grid do: [ :aBlock |
		| blockElement |
		blockElement := ((aBlock visualInstance) block: aBlock) board: aTBoard.
		self addChild: blockElement ]