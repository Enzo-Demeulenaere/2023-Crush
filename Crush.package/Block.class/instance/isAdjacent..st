testing
isAdjacent: anotherBlock

	self positionX == anotherBlock positionX
	& (self positionY + 1 == anotherBlock positionY)
	| (self positionY - 1 == anotherBlock positionY) 
		ifTrue: [ ^ true ].
	self positionY == anotherBlock positionY
	& (self positionX + 1 == anotherBlock positionX)
	| (self positionX - 1 == anotherBlock positionX) 
		ifTrue: [ ^ true ].
	^ false