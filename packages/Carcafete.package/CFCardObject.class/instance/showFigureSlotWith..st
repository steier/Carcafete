modifying
showFigureSlotWith: aGame
	
	self ifOccupied: [^nil].
	
	self figureSlot: (CFFigureSlot new: self and: aGame).
	self figureSlot
			rotateBy: (0 - (self card rotationDegrees));
			position: self figurePosition;
			comeToFront.
	
	self card addMorph: self figureSlot.
	
	^self figureSlot   
