testing
isAdjacent: anotherBlock
	"self positionX == anotherBlock positionX
	& (self positionY + 1 == anotherBlock positionY)
	| (self positionY - 1 == anotherBlock positionY) ifTrue: [ ^ true ].
	self positionY == anotherBlock positionY
	& (self positionX + 1 == anotherBlock positionX)
	| (self positionX - 1 == anotherBlock positionX) ifTrue: [ ^ true ].
	^ false"

	| selfX selfY otherX otherY |
	selfX := self positionX.
	selfY := self positionY.
	otherX := anotherBlock positionX.
	otherY := anotherBlock positionY.
	^ (selfY = otherY and: [ (selfX - otherX) abs = 1 ]) or: [
		  selfX = otherX and: [ (selfY - otherY) abs = 1 ] ]