event handling
startGameButtonClicked

	|test|

	test := self enoughPlayers.
	test ifFalse: [self createInitialGame] ifTrue: [self showError]