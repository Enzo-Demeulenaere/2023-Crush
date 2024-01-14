tests
testSetGetScoreFromBlock

	| block |
	block := BlueBlock new.
	block score: 5.
	self assert: block score equals: 5