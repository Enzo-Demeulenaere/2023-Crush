as yet unclassified
launchFromString: aString

	| initialized index|
	initialized := MygLevelImporter fromString: aString fromPackage: (RPackageOrganizer default packageNamed:'crush3p').
	grid := initialized.
