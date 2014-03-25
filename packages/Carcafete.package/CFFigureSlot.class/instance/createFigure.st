accessing
createFigure

	|playercolor filename morph|
	
	morph:= SketchMorph withForm: (CFMorphicUtil flyweightLoadForm: 'CFPlayer_black.png').
	morph comeToFront.
	
	self addMorphCentered: morph.
	
	playercolor := (self game currentPlayer) studentID baseColor.
	filename := 'CFPlayer_', playercolor asString, '.png'.
	self figure: (SketchMorph withForm: (CFMorphicUtil flyweightLoadForm: filename))