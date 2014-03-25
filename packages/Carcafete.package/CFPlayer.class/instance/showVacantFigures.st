player commands
showVacantFigures
	
	|xPosition|
	
	xPosition := -6.
	self vacantFigures do: [:figure|
		figure show.
		figure rotateBy: 0.  
		figure position: ((self bottomLeft) + (xPosition @ -40)).
		self figureBox addMorph: figure.
		xPosition := xPosition + 20]