player commands
onConfirmedFigureSlot

	self currentCard hideFigureSlots.
	self currentFigureSlot ifNotNil: [self placeFigure].
	self currentFigureSlot: nil.	

	self tryTakeBackFigures.
	
	self endTurn
	