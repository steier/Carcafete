accessing
placeFigure
	
	|currentFigure|
	
	currentFigure := CFGame get currentPlayer placeFigure: self cardObject.
	currentFigure center: self center.
	currentFigure beSticky.
	
	self addMorph: currentFigure.

	CFGame get currentPlayer onFigurePlaced