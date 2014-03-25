creation
createInitialGame
	
	self clearButtons.
	self hide.
	
	self game: CFGame new.
	self game openInWorld.
	self game controlMenu: self.
	
	self createPlayer.
	self game startGame.
	self studentsReset