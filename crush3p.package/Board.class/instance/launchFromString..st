as yet unclassified
launchFromString: aString

	| initialized |
	initialized := MygLevelImporter
		               fromString: aString
		               fromPackage:
		               (RPackageOrganizer default packageNamed: 'crush3p').

	self configureGrid: initialized