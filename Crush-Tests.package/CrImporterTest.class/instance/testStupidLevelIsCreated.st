tests
testStupidLevelIsCreated

	| initialized |
	initialized := MygLevelImporter
		               fromString: 'BBY'
		               fromPackage: self package.
	self
		assert: (initialized atColumn: 1 atRow: 1) class
		equals: BlueBlock.
	self
		assert: (initialized atColumn: 3 atRow: 1) class
		equals: YellowBlock