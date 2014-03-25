creation
createHighscore: aScoreSet
	
	|yPosition xPosition|
	
	self showHighscoreBackground.

	yPosition := -130.
	xPosition := -310.
	
	aScoreSet do: [:player|
		self showPlayerPoints: player at: xPosition and: yPosition.
		self showWinners: player at: xPosition and: yPosition.  
		yPosition := yPosition + 120.
		xPosition := xPosition + 210]