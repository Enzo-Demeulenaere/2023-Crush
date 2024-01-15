initialization
initialize

	super initialize.

	self
		background: self backgroundPaint;
		width: 150;
		height: 150;
		geometry: (BlSquareGeometry new);
		margin: (BlInsets
				           top: 8
				           right: 8
				           bottom: 8
				           left: 8);
						padding: (BlInsets
				           top: 8
				           right: 8
				           bottom: 8
				           left: 8);
				layout: BlFrameLayout new;
		constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal matchParent.
		aLayoutConstraints vertical matchParent ].
	

self addEventHandlerOn: BlMouseUpEvent do: [ :anEvent |
		anEvent primaryButtonPressed
			ifTrue: [ self select ] ]