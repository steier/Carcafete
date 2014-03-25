player commands
initialize

	super initialize.
	
	self
		initializeSelf;
		initializePointLabel;
		initializeFigureBox;
		initializeShadow.
		
	8 timesRepeat: [self vacantFigures add: (CFFigure new: self)].
	
	self buildItTogether