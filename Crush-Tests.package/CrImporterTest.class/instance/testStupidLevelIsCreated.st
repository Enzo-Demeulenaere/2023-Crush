tests
testStupidLevelIsCreated

	| initialized |
	initialized := MygLevelImporter
		               fromString: 'BBY'
		               fromPackage:
		               (RPackageOrganizer default packageNamed: 'crush3p').
	self
		assert: (initialized atColumn: 1 atRow: 1) class
		equals: BlueBlock.
	self
		assert: (initialized atColumn: 3 atRow: 1) class
		equals: YellowBlock