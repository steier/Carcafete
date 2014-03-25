as yet unclassified
new: aStudCard and: aPoint and: aGame

	|player|
	
	player := CFPlayer basicNew .
	player studentID: aStudCard.
	player game: aGame.
	player initialize.
	player position: aPoint.
	
	^player