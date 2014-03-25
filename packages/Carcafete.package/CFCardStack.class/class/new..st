as yet unclassified
new: aGame

	|cardStack|
	
	cardStack := CFCardStack basicNew.
	cardStack game: aGame.
	cardStack initialize.
	
	^cardStack