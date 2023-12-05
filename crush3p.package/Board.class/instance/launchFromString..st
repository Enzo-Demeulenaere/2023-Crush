as yet unclassified
launchFromString: aString

	| initialized currentElement|
	initialized := MygLevelImporter fromString: aString fromPackage: (RPackageOrganizer default packageNamed:'crush3p').
	1 to: (initialized height) do: [ :ligneIndex |
		1 to: (initialized width) do: [ :colonneIndex |
			currentElement:= initialized atColumn: colonneIndex atRow: ligneIndex.
			currentElement positionX: ligneIndex.
			currentElement positionY: colonneIndex.
		].
	].
	grid := initialized.
