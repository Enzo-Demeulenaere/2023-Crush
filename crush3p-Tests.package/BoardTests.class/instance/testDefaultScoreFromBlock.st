tests
testDefaultScoreFromBlock

	| block |
	block := ColoredBlock newBlue.
	self assert: (block score) equals: 1.