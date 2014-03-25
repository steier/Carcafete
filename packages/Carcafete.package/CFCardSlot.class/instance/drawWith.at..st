ui
drawWith: neighbour at: direction

	|slot|

	slot := CFCardSlotWidget new: self.
	slot extent: (191@191);
		comeToFront.
		
	self addMorphCentered: slot.
	
	self extent: (191@191);
		topLeft: (neighbour topLeft + (CFPositionUtil cardOffset: 
			(CFPositionUtil oppositeDirection: direction))).
	
	self game cardArea addMorph: self.
	
	self hide