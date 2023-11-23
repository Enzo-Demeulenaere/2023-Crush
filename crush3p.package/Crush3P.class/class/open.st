instance creation
open

	<script>
	| display helpMenu bar title |
	title := self title.
	helpMenu := self menuHelp.
	bar := self menuBar.
	
	bar addMenu: helpMenu.

	display := BlSpace new.
	display root addChild: title.
	display root addChild: bar.
	display extent: 800 @ 800.
	display show