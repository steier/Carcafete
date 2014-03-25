control
endGame
	
	| score |
	
	self players add: self currentPlayer.
	self players do: [:player| player gameEnded].
	
	score := players asOrderedCollection.
	score sort: [:first :second| ((first points) > (second points))].
	
	self abandon.
	self controlMenu createHighscore: score