instance creation
openWithModel: aTField

	| aFieldElement space |
	space := BlSpace new.
	aFieldElement := self new
		                 board: aTField;
		                 yourself.
	space root addChild: aFieldElement.
	space pulse
		title: 'Crush3P - Game';
		extent: 1900 @ 1200;
		resizable: true;
		show