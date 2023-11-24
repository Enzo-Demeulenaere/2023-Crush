tests
testSetGetScoreFromBlock

	| block |
	block := ColoredBlock newBlue.
	block score: 5.
	self assert: (block score) equals: 5.