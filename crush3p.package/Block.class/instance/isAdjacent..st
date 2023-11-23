testing
isAdjacent: anotherBlock

	((positionX == (anotherBlock positionX)) & ((positionY+1) == (anotherBlock positionY)) | ((positionY-1) == (anotherBlock positionY))) ifTrue: [^ true].
	((positionY == (anotherBlock positionY)) & ((positionX+1) == (anotherBlock positionX)) | ((positionX-1) == (anotherBlock positionX))) ifTrue: [^ true].
	^ false.