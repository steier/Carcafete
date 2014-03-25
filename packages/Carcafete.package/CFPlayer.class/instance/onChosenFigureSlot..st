player commands
onChosenFigureSlot: object

	self currentFigureSlot ifNotNil:
		[self currentFigureSlot deactivate].
	
	(self currentFigureSlot == object ) ifTrue:
		[self currentFigureSlot: nil] 
	ifFalse:
		[self currentFigureSlot: object.
		self currentFigureSlot activate]