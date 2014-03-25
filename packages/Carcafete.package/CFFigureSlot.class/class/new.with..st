as yet unclassified
new: anObject with: aFigurePosition
	
	|figureSlot form|
	
	form := CFMorphicUtil flyweightLoadForm: 'CFPlayer_black.png'.
	
	figureSlot := CFFigureSlot withForm: form.
	figureSlot figurePosition: aFigurePosition.
	figureSlot cardObject: anObject.
	figureSlot initialize.
	
	^figureSlot 