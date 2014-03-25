player commands
placeFigure

	|figure|
	
	figure := self vacantFigures removeFirst.
	self engagedFigures add: figure.
	figure cardObject: self currentFigureSlot cardObject.
	self currentFigureSlot cardObject owner: figure.
	self currentFigureSlot cardObject showFigure: figure.
	self showVacantFigures.
	
	^figure