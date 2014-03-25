control
startGame

	self players do: [:player| player gameStarted].
	
	self nextTurn