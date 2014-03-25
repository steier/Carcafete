event handling
showPlayerPoints: aPlayer at: xPosition and: yPosition

	|playerPoints|
	
	playerPoints := (StringMorph new).
	playerPoints
		interimContents: ('achieved points:  ', ((aPlayer points)asString));
		color: (Color white); emphasis: 1; beSticky.
	
	self buttonLayer addMorph:
		(playerPoints center: (self center + (xPosition@(yPosition +80))))