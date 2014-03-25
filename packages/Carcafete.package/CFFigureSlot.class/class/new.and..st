as yet unclassified
new: anObject and: aGame
	
	|figureSlot|
	
	figureSlot := CFFigureSlot basicNew.
	figureSlot cardObject: anObject.
	figureSlot initializeWith: aGame.

	^figureSlot