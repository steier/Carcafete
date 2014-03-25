player commands
onCardPlaced
	
	(self vacantFigures size == 0) ifTrue:
		[self endTurn]
	ifFalse:
		[self currentCard showFigureSlots]

	"next --> figurePlaced"