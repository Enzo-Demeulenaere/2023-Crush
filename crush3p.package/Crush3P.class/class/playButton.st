as yet unclassified
playButton

	| button label labelText |
	button := BlElement new
		          background: Color red;
		          layout: BlFrameLayout new;
		          geometry: (BlRoundedRectangleGeometry cornerRadius: 10);
		          padding: (BlInsets
				           top: 8
				           right: 16
				           bottom: 8
				           left: 16);
		          constraintsDo: [ :c |
			          c frame horizontal alignCenter.
			 c frame vertical alignCenter ].

	labelText := 'Play' asRopedText
		             foreground: Color white;
		             fontSize: 16;
		             fontName: 'Helvetica';
		             thin.

	label := BlTextElement new.
	label text: labelText.

	button addChild: label.
	^ button