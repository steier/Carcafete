initialize-release
initializeWith: aGame 

	super initialize.
	
	self game: aGame.
	self neighbourCards: (CFPositionUtil initializeDictWithDirections: nil)