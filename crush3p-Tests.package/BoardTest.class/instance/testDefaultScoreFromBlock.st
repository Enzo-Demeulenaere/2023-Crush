tests
testDefaultScoreFromBlock

	| block |
	block := BlueBlock new.
	self assert: block score equals: 1