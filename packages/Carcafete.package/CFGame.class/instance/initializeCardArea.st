control
initializeCardArea
	  
	self cardArea: Morph new.
	self cardArea 
			position: (400@300);
			extent: (0@0);
			color: (Color gray alpha: 0.1).
	self createStartCard