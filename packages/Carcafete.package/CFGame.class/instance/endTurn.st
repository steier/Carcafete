control
endTurn
	  
	(self cardStack isEmpty) ifTrue: 
		[self endGame] 
	ifFalse:
		[self players addLast: self currentPlayer.
		self nextTurn]