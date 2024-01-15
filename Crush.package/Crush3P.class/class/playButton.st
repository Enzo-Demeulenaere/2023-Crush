private - menu building
playButton

	| button label labelText |
	button := BlElement new
		          background: Color gray;
		          layout: BlFrameLayout new;
		          geometry: (BlRoundedRectangleGeometry cornerRadius: 10);
		          margin: (BlInsets
				           top: 150
				           right: 16
				           bottom: 8
				           left: 16);
		          padding: (BlInsets
				           top: 16
				           right: 16
				           bottom: 8
				           left: 16);
		          constraintsDo: [ :c |
			          c frame horizontal alignCenter.
			          c frame vertical alignCenter.
			          c horizontal exact: 200 ];
		          when: BlClickEvent do: [ BoardElement launch ].


	labelText := 'Play' asRopedText
		             foreground: Color white;
		             fontSize: 16;
		             fontName: 'Helvetica';
		             thin.

	label := BlTextElement new.
	label text: labelText.

	button addChild: label.
	^ button