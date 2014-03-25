initialize-release
initializeWith: aGame
	
	super initialize.
	
	self 
		comeToFront;
		on: #mouseDown send:#toggle to: self;
		game: aGame;
		createFigure.
		
	self addMorphCentered: self figure.
	self figure hide