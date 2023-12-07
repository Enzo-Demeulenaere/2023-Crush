instance creation
openWithModel: aTField

	| aFieldElement space |
	space := BlSpace new.
	aFieldElement := self new
		                 board: aTField;
		                 yourself.
	space root addChild: aFieldElement.
	space pulse
		extent: 500 @ 500;
		resizable: false;
		show