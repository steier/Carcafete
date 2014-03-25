ui
placeCard

	self game cardArea addMorph: self card.
	
	self card 
		beSticky;
		position: self position;
		takePositionOf: self;
		okButtonPosition: (self bottomRight + ((-30)@(-30))).
	
	self	 abandon.
	
	self game currentPlayer onCardPlaced.
