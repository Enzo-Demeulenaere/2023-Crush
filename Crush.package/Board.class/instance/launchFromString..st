initialization
launchFromString: aString

	| initialized |
	initialized := MygLevelImporter
		               fromString: aString
		               fromPackage:
		               (RPackageOrganizer default packageNamed: 'Crush').

	self configureGrid: initialized