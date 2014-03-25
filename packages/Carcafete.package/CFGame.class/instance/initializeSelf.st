control
initializeSelf
	  
	self 
		beSticky;
		extent: World extent;
		color: (((Color gray muchDarker) muchDarker) alpha: 1);
		players: OrderedCollection new;
		slots: Set new;
		cardStack: (CFCardStack new: self)