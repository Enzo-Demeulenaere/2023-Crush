initialization
initialize

	super initialize.

	self
		background: self backgroundPaint;
		geometry: BlSquareGeometry new;
		constraintsDo: [ :aLayoutConstraints |
			aLayoutConstraints horizontal matchParent.
			aLayoutConstraints vertical matchParent ].


	self addEventHandlerOn: BlClickEvent do: [ self select ]