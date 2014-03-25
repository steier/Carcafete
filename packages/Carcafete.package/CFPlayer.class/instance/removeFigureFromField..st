player commands
removeFigureFromField: aFigure

	self addPoints: aFigure cardObject getValue.
	self pointLabel interimContents: 'my points:  ', self points asString.
	
	aFigure cardObject owner: nil.  
	aFigure cardObject: nil.
	aFigure hide.
	
	self engagedFigures remove: aFigure.
	self vacantFigures add: aFigure.
	self showVacantFigures