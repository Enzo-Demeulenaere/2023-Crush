printing
printOn: aStream

	super printOn: aStream.
	aStream print: self positionX.
	aStream << '@'.
	aStream print: self positionY 