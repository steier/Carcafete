event handling
showPlayerPoints: player

	|playerPoints|
	
	playerPoints := (StringMorph new).
	playerPoints
		interimContents: ('achieved points:  ', ((player points)asString));
		color: (Color white); emphasis: 1; beSticky.
	
	^playerPoints

	

	