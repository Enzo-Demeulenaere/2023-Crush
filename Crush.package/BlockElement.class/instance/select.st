accessing - selection
select
	"logique faite dans l'UI"

	| selectedBlock |
	selectedBlock := self parent board selected.
	selectedBlock
		ifNil: [
			self parent board selected: self block.
			self background: Color white ]
		ifNotNil: [
			selectedBlock = self
				ifTrue: [
					self background: self backgroundPaint.
					self parent board selected: nil ]
				ifFalse: [
					(parent board swapIfCombo: selectedBlock secondBlock: self block)
						ifTrue: [
							parent children removeAll: parent children.
							parent board: parent board.
							"reset tout l'UI pour tout redessiner"
							parent board selected: nil ] ] ]