accessing - selection
select
|selectedBlock|
selectedBlock := parent board selected.
selectedBlock ifNil: [parent board selected: self block. 
	self background: Color white.] 
ifNotNil: [ 
	(selectedBlock = self ) 
	ifTrue: [self background: self backgroundPaint.
		parent board selected: nil.]
	ifFalse: [(parent board swapIfCombo: selectedBlock secondBlock: self block ) ifTrue: [ parent children removeAll: parent children. parent board: parent board. parent board selected: nil.]
	]]. 
"self background: Color white."
"(self background paint color equals: Color white) ifTrue: [self background: self backgroundPaint]."