modifying
placeNewSpacer: newSpacer at: direction.
	
	CFCardSpacer
		connect: newSpacer
		at: (CFPositionUtil oppositeDirection: direction)
		with: self
		at: direction.
		
	newSpacer drawWith: self at: (CFPositionUtil oppositeDirection: direction)